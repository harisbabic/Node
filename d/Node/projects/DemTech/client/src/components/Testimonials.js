// client/src/components/Testimonials.js
import React from 'react';
import './Testimonials.css';

const Testimonials = () => {
  return (
    <section id="testimonials" className="testimonials">
      <div className="container">
        <h2 className="section-title">Testimonials</h2>
        <div className="testimonials-grid">
          <div className="testimonial-item">
            <p>"This service is amazing!" - User 1</p>
          </div>
          <div className="testimonial-item">
            <p>"Highly recommend to everyone." - User 2</p>
          </div>
          <div className="testimonial-item">
            <p>"Changed my life for the better." - User 3</p>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Testimonials;
