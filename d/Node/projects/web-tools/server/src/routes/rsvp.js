// routes/rsvp.js
const express = require('express');
const router = express.Router();
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);
const { COMMISSION_PERCENTAGE } = require('../config/commission');
const Event = require('../models/Event');
const twilio = require('twilio');
const sgMail = require('@sendgrid/mail');

const twilioClient = new twilio(process.env.TWILIO_SID, process.env.TWILIO_AUTH_TOKEN);
sgMail.setApiKey(process.env.SENDGRID_API_KEY);

router.post('/rsvp', async (req, res) => {
    const { eventId, paymentMethodId, isPaid, ticketPrice, phoneNumber, email } = req.body;
    try {
        const event = await Event.findById(eventId).populate('organizer');
        let totalAmount = 0;
        let commission = 0;

        if (isPaid) {
            commission = (ticketPrice * COMMISSION_PERCENTAGE) / 100;
            totalAmount = ticketPrice + commission;
        }

        const paymentIntent = await stripe.paymentIntents.create({
            amount: totalAmount * 100, // in cents
            currency: 'usd',
            payment_method: paymentMethodId,
            confirm: true,
            transfer_data: isPaid ? {
                destination: event.organizer.stripeAccountId, // Assuming the organizer has a Stripe account
                amount: (ticketPrice - commission) * 100 // amount in cents
            } : {}
        });

        // Send SMS notification
        if (phoneNumber) {
            await twilioClient.messages.create({
                body: `You have successfully RSVPed for the event: ${event.title} on ${new Date(event.date).toLocaleDateString()}`,
                from: process.env.TWILIO_PHONE_NUMBER,
                to: phoneNumber
            });
        }

        // Send email notification
        if (email) {
            const msg = {
                to: email,
                from: 'noreply@countywebtools.com', // Use your verified SendGrid sender email
                subject: `RSVP Confirmation for ${event.title}`,
                text: `You have successfully RSVPed for the event: ${event.title} on ${new Date(event.date).toLocaleDateString()}`,
                html: `<strong>You have successfully RSVPed for the event: ${event.title} on ${new Date(event.date).toLocaleDateString()}</strong>`
            };
            await sgMail.send(msg);
        }

        res.status(200).send('RSVP successful');
    } catch (error) {
        res.status(500).send('Error processing RSVP');
    }
});

module.exports = router;
