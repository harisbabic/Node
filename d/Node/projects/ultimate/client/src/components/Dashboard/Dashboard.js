import React, { useState, useEffect } from 'react';
import DynamicTable from '../DynamicUI/DynamicTable';

const Dashboard = () => {
  const [dashboardData, setDashboardData] = useState({});

  useEffect(() => {
    // Fetch dashboard data from API
    const fetchDashboardData = async () => {
      // Replace with actual API call
      const response = await fetch('/api/dashboard');
      const data = await response.json();
      setDashboardData(data);
    };

    fetchDashboardData();
  }, []);

  return (
    <div>
      <h1>Dashboard</h1>
      {Object.entries(dashboardData).map(([key, value]) => (
        <div key={key}>
          <h2>{key}</h2>
          {Array.isArray(value) ? (
            <DynamicTable
              data={value}
              columns={Object.keys(value[0]).map(col => ({ key: col, label: col }))}
            />
          ) : (
            <p>{value}</p>
          )}
        </div>
      ))}
    </div>
  );
};

export default Dashboard;
