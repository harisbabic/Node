// src/components/BusinessForm.js
import React, { useState } from 'react';
import { useDispatch } from 'react-redux';
import { createBusiness } from '../store/businessSlice';

const BusinessForm = () => {
  const [formData, setFormData] = useState({
    name: '',
    description: '',
    category: '',
    address: '',
    contactInfo: '',
    hours: '',
  });

  const dispatch = useDispatch();

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    dispatch(createBusiness(formData));
  };

  return (
    <form onSubmit={handleSubmit}>
      {/* Add form fields for each property in formData */}
      <button type="submit">Create Business</button>
    </form>
  );
};

export default BusinessForm;

// Implement similar forms for projects and invoices



// //GPT 4o client/src/components/BusinessForm.js
// import React, { useState } from 'react';
// import axios from 'axios';

// function BusinessForm() {
//     const [name, setName] = useState('');
//     const [description, setDescription] = useState('');
//     const [category, setCategory] = useState('');
//     const [address, setAddress] = useState('');
//     const [contactInfo, setContactInfo] = useState('');
//     const [hours, setHours] = useState('');
//     const [isFeatured, setIsFeatured] = useState(false);

//     const handleSubmit = async (e) => {
//         e.preventDefault();
//         try {
//             await axios.post('/api/businesses/add', { name, description, category, address, contactInfo, hours, isFeatured });
//             alert('Business added successfully');
//         } catch (error) {
//             alert('Error adding business');
//         }
//     };

//     return (
//         <form onSubmit={handleSubmit}>
//             <h1>Add a New Business</h1>
//             <input type="text" value={name} onChange={(e) => setName(e.target.value)} placeholder="Business Name" required />
//             <textarea value={description} onChange={(e) => setDescription(e.target.value)} placeholder="Description" required />
//             <input type="text" value={category} onChange={(e) => setCategory(e.target.value)} placeholder="Category" required />
//             <input type="text" value={address} onChange={(e) => setAddress(e.target.value)} placeholder="Address" required />
//             <input type="text" value={contactInfo} onChange={(e) => setContactInfo(e.target.value)} placeholder="Contact Info" required />
//             <input type="text" value={hours} onChange={(e) => setHours(e.target.value)} placeholder="Hours of Operation" required />
//             <label>
//                 <input type="checkbox" checked={isFeatured} onChange={(e) => setIsFeatured(e.target.checked)} />
//                 Featured Listing
//             </label>
//             <button type="submit">Add Business</button>
//         </form>
//     );
// }

// export default BusinessForm;
