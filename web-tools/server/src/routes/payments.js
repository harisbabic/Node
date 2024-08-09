// routes/payments.js
const express = require('express');
const router = express.Router();
const fetch = require('node-fetch'); // Use CommonJS syntax
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY, {
  httpClient: require('stripe').createFetchHttpClient(fetch), // Provide fetch implementation
});

const { COMMISSION_PERCENTAGE } = require('../config/commission');
const Service = require('../models/Service');

// Route for booking a service and processing the payment
router.post('/book', async (req, res) => {
  const { serviceId, paymentMethodId } = req.body;
  try {
    const service = await Service.findById(serviceId).populate('provider');
    const commission = (service.price * COMMISSION_PERCENTAGE) / 100;
    const totalAmount = service.price + commission;

    const paymentIntent = await stripe.paymentIntents.create({
      amount: totalAmount * 100, // in cents
      currency: 'usd',
      payment_method: paymentMethodId,
      confirm: true,
      transfer_data: {
        destination: service.provider.stripeAccountId, // Assuming the provider has a Stripe account
        amount: (service.price - commission) * 100 // amount in cents
      }
    });

    res.status(200).send('Payment successful');
  } catch (error) {
    res.status(500).send('Error processing payment');
  }
});

router.post('/create-payment-intent', async (req, res) => {
  const { amount, currency } = req.body;

  try {
    const paymentIntent = await stripe.paymentIntents.create({
      amount,
      currency,
      payment_method_types: ['card']
    });

    res.status(200).send({
      clientSecret: paymentIntent.client_secret
    });
  } catch (err) {
    res.status(500).send({ error: err.message });
  }
});

module.exports = router;
