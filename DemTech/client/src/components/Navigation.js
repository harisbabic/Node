import React from 'react';
import { Link } from 'react-router-dom';
import '../styles/Navigation.css';

function Navigation() {
  return (
    <nav className="navigation">
      <ul>
        <li><Link to="/">Dashboard</Link></li>
        <li><Link to="/clients">Clients</Link></li>
        <li><Link to="/projects">Projects</Link></li>
        <li><Link to="/invoices">Invoices</Link></li>
      </ul>
    </nav>
  );
}

export default Navigation;
