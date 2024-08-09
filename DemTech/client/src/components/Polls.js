// client/src/components/Polls.js
import React, { useEffect, useState } from 'react';

const Polls = () => {
  const [polls, setPolls] = useState([]);

  useEffect(() => {
    // Fetch polls from the backend
  }, []);

  return (
    <div>
      <h1>Polls</h1>
      {polls.map(poll => (
        <div key={poll.id}>
          <h2>{poll.question}</h2>
          <ul>
            {poll.options.map(option => (
              <li key={option.option}>
                {option.option}: {option.votes} votes
              </li>
            ))}
          </ul>
        </div>
      ))}
    </div>
  );
};

export default Polls;
