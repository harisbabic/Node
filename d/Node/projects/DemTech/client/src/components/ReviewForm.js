// client/src/components/ReviewForm.js
import React, { useState } from 'react';
import axios from 'axios';

function ReviewForm({ businessId }) {
    const [rating, setRating] = useState(1);
    const [comment, setComment] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await axios.post('/api/reviews/add', { businessId, rating, comment });
            alert('Review added successfully');
        } catch (error) {
            alert('Error adding review');
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <h1>Add a Review</h1>
            <label>
                Rating:
                <select value={rating} onChange={(e) => setRating(e.target.value)}>
                    {[1, 2, 3, 4, 5].map(num => (
                        <option key={num} value={num}>{num}</option>
                    ))}
                </select>
            </label>
            <textarea value={comment} onChange={(e) => setComment(e.target.value)} placeholder="Comment" required />
            <button type="submit">Add Review</button>
        </form>
    );
}

export default ReviewForm;
