// client/src/components/Navbar.js
import React from 'react';
import './Navbar.css';

const Navbar = () => {
  return (
    <nav className="navbar">
      <div className="navbar-container">
        <a href="/" className="navbar-logo">Logo</a>
        <ul className="navbar-menu">
          <li className="navbar-item"><a href="#features" className="navbar-link">Features</a></li>
          <li className="navbar-item"><a href="#testimonials" className="navbar-link">Testimonials</a></li>
          <li className="navbar-item"><a href="#contact" className="navbar-link">Contact</a></li>
          <li className="navbar-item"><a href="#signup" className="navbar-link navbar-link-cta">Sign Up</a></li>
        </ul>
      </div>
    </nav>
  );
};

export default Navbar;