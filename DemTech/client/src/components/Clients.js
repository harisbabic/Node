// src/views/Clients.js
import React, { useState } from 'react';
import ClientForm from '../components/ClientForm';
import '../styles/Clients.css';

function Clients() {
  const [clients, setClients] = useState([]);

  const handleAddClient = (newClient) => {
    setClients([...clients, newClient]);
  };

  return (
    <div className="clients-view">
      <h1>Clients</h1>
      <ClientForm onSubmit={handleAddClient} />
      <ul>
        {clients.map((client, index) => (
          <li key={index}>{client.name} - {client.email}</li>
        ))}
      </ul>
    </div>
  );
}

export default Clients;
