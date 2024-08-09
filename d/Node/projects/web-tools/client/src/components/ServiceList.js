// client/src/components/ServiceList.js
import React, { useState, useEffect } from 'react';
import axios from 'axios';

function ServiceList() {
    const [services, setServices] = useState([]);

    useEffect(() => {
        axios.get('/api/services')
            .then(response => setServices(response.data))
            .catch(error => console.error('Error fetching services:', error));
    }, []);

    return (
        <div>
            <h1>Available Services</h1>
            <ul>
                {services.map(service => (
                    <li key={service._id}>
                        <h2>{service.name}</h2>
                        <p>{service.description}</p>
                        <p>Price: ${service.price}</p>
                        <p>Duration: {service.duration} minutes</p>
                        <button>Book Now</button>
                    </li>
                ))}
            </ul>
        </div>
    );
}

export default ServiceList;
