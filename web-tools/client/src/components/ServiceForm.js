// client/src/components/ServiceForm.js
import React, { useState } from 'react';
import axios from 'axios';

function ServiceForm() {
    const [name, setName] = useState('');
    const [description, setDescription] = useState('');
    const [price, setPrice] = useState('');
    const [duration, setDuration] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await axios.post('/api/services/add', { name, description, price, duration });
            alert('Service added successfully');
        } catch (error) {
            alert('Error adding service');
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <h1>Add a New Service</h1>
            <input type="text" value={name} onChange={(e) => setName(e.target.value)} placeholder="Service Name" required />
            <textarea value={description} onChange={(e) => setDescription(e.target.value)} placeholder="Description" required />
            <input type="number" value={price} onChange={(e) => setPrice(e.target.value)} placeholder="Price" required />
            <input type="number" value={duration} onChange={(e) => setDuration(e.target.value)} placeholder="Duration (minutes)" required />
            <button type="submit">Add Service</button>
        </form>
    );
}

export default ServiceForm;
