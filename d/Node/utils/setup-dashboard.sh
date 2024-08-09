#!/bin/bash
# setup-dashboard.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

log "Setting up dashboard for $project_dir"

mkdir -p "$project_dir/client/src/components/Dashboard"

# Create Dashboard component
cat << EOF > "$project_dir/client/src/components/Dashboard/Dashboard.js"
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
EOF

# Create DashboardWidget component
cat << EOF > "$project_dir/client/src/components/Dashboard/DashboardWidget.js"
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
EOF

# Update App.js to include Dashboard
app_js_path="$project_dir/client/src/App.js"
if [ -f "$app_js_path" ]; then
  sed -i "/import React/a import Dashboard from './components/Dashboard/Dashboard';" "$app_js_path"
  sed -i "/<div className=\"App\">/a <Dashboard />" "$app_js_path"
else
  log "Warning: App.js not found at $app_js_path. Dashboard import not added."
fi

log "Dashboard setup completed for $project_dir"
