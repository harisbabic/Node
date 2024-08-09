// client/src/components/ReviewList.js
import React, { useState, useEffect } from 'react';
import axios from 'axios';

function ReviewList({ businessId }) {
    const [reviews, setReviews] = useState([]);

    useEffect(() => {
        axios.get(`/api/reviews/business/${businessId}`)
            .then(response => setReviews(response.data))
            .catch(error => console.error('Error fetching reviews:', error));
    }, [businessId]);

    return (
        <div>
            <h1>Reviews</h1>
            <ul>
                {reviews.map(review => (
                    <li key={review._id}>
                        <h2>{review.user.username}</h2>
                        <p>Rating: {review.rating}</p>
                        <p>{review.comment}</p>
                    </li>
                ))}
            </ul>
        </div>
    );
}

export default ReviewList;
