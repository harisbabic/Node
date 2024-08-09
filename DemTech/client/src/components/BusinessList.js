// client/src/components/BusinessList.js
import React, { useState, useEffect } from 'react';
import axios from 'axios';

function BusinessList() {
    const [businesses, setBusinesses] = useState([]);

    useEffect(() => {
        axios.get('/api/businesses/all')
            .then(response => setBusinesses(response.data))
            .catch(error => console.error('Error fetching businesses:', error));
    }, []);

    return (
        <div>
            <h1>Business Directory</h1>
            <ul>
                {businesses.map(business => (
                    <li key={business._id}>
                        <h2>{business.name}</h2>
                        <p>{business.description}</p>
                        <p>Category: {business.category}</p>
                        <p>Address: {business.address}</p>
                        <p>Contact Info: {business.contactInfo}</p>
                        <p>Hours: {business.hours}</p>
                        <p>Owner: {business.owner.username}</p>
                        {business.isFeatured && <p>Featured Listing</p>}
                    </li>
                ))}
            </ul>
        </div>
    );
}

export default BusinessList;
