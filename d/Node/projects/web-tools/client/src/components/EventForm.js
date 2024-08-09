// client/src/components/EventForm.js
import React, { useState } from 'react';
import axios from 'axios';

function EventForm() {
    const [title, setTitle] = useState('');
    const [description, setDescription] = useState('');
    const [date, setDate] = useState('');
    const [time, setTime] = useState('');
    const [location, setLocation] = useState('');
    const [isRecurring, setIsRecurring] = useState(false);
    const [category, setCategory] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await axios.post('/api/events/add', { title, description, date, time, location, isRecurring, category });
            alert('Event added successfully');
        } catch (error) {
            alert('Error adding event');
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <h1>Add a New Event</h1>
            <input type="text" value={title} onChange={(e) => setTitle(e.target.value)} placeholder="Event Title" required />
            <textarea value={description} onChange={(e) => setDescription(e.target.value)} placeholder="Description" required />
            <input type="date" value={date} onChange={(e) => setDate(e.target.value)} required />
            <input type="time" value={time} onChange={(e) => setTime(e.target.value)} required />
            <input type="text" value={location} onChange={(e) => setLocation(e.target.value)} placeholder="Location" required />
            <label>
                <input type="checkbox" checked={isRecurring} onChange={(e) => setIsRecurring(e.target.checked)} />
                Recurring Event
            </label>
            <input type="text" value={category} onChange={(e) => setCategory(e.target.value)} placeholder="Category" required />
            <button type="submit">Add Event</button>
        </form>
    );
}

export default EventForm;
