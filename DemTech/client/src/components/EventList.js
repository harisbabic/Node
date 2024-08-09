// client/src/components/EventList.js
import React, { useState, useEffect } from 'react';
import axios from 'axios';

function EventList() {
    const [events, setEvents] = useState([]);

    useEffect(() => {
        axios.get('/api/events/all')
            .then(response => setEvents(response.data))
            .catch(error => console.error('Error fetching events:', error));
    }, []);

    return (
        <div>
            <h1>Upcoming Events</h1>
            <ul>
                {events.map(event => (
                    <li key={event._id}>
                        <h2>{event.title}</h2>
                        <p>{event.description}</p>
                        <p>Date: {new Date(event.date).toLocaleDateString()}</p>
                        <p>Time: {event.time}</p>
                        <p>Location: {event.location}</p>
                        <p>Category: {event.category}</p>
                        <p>Organizer: {event.organizer.username}</p>
                    </li>
                ))}
            </ul>
        </div>
    );
}

export default EventList;
