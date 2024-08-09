// client/src/components/CreatePoll.js
import React, { useState } from 'react';

const CreatePoll = () => {
  const [question, setQuestion] = useState('');
  const [options, setOptions] = useState(['', '']);

  const handleOptionChange = (index, value) => {
    const newOptions = [...options];
    newOptions[index] = value;
    setOptions(newOptions);
  };

  const addOption = () => {
    setOptions([...options, '']);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    // Implement API call to create poll
  };

  return (
    <form onSubmit={handleSubmit}>
      <div>
        <label>Question</label>
        <input type="text" value={question} onChange={(e) => setQuestion(e.target.value)} required />
      </div>
      <div>
        <label>Options</label>
        {options.map((option, index) => (
          <input key={index} type="text" value={option} onChange={(e) => handleOptionChange(index, e.target.value)} required />
        ))}
        <button type="button" onClick={addOption}>Add Option</button>
      </div>
      <button type="submit">Create Poll</button>
    </form>
  );
};

export default CreatePoll;
