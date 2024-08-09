// client/src/components/Hero.js
import React from 'react';
import './Hero.css';

const Hero = () => {
  return (
    <section className="hero">
      <div className="hero-content">
        <h1 className="hero-title">Welcome to Our Service</h1>
        <p className="hero-subtitle">We help you manage your projects efficiently.</p>
        <div className="hero-buttons">
          <a href="#signup" className="hero-button">Get Started</a>
          <a href="#learn-more" className="hero-button secondary">Learn More</a>
        </div>
      </div>
    </section>
  );
};

export default Hero;
