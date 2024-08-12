import React from 'react';

const DashboardWidget = ({ title, value, icon }) => {
  return (
    <div className="dashboard-widget">
      <div className="widget-icon">{icon}</div>
      <div className="widget-content">
        <h3>{title}</h3>
        <p>{value}</p>
      </div>
    </div>
  );
};

export default DashboardWidget;
