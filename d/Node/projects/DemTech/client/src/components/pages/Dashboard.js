// client/src/components/pages/Dashboard.js
import React, { useEffect, useState } from 'react';
import axios from 'axios';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
    axios.get('/api/dashboard')
      .then(response => {
        setData(response.data);
      })
      .catch(error => {
        console.error('Error fetching dashboard data:', error);
      });
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      <DynamicTable data={data} />
    </div>
  );
};

export default Dashboard;
