#!/bin/bash
# setup-core-features.sh
# Usage: ./setup-core-features.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

# Create directories for core features
mkdir -p "$project_dir/src/features/auth"
mkdir -p "$project_dir/src/features/projects"
mkdir -p "$project_dir/src/features/tasks"
mkdir -p "$project_dir/src/features/analytics"

# Create basic components for each feature
cat << EOF > "$project_dir/src/features/auth/Login.js"
import React, { useState } from 'react';

const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    // TODO: Implement login logic
    console.log('Login submitted', { email, password });
  };

  return (
    <form onSubmit={handleSubmit}>
      <input
        type="email"
        value={email}
        onChange={(e) => setEmail(e.target.value)}
        placeholder="Email"
        required
      />
      <input
        type="password"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
        placeholder="Password"
        required
      />
      <button type="submit">Login</button>
    </form>
  );
};

export default Login;
EOF

cat << EOF > "$project_dir/src/features/projects/ProjectList.js"
import React from 'react';

const ProjectList = () => {
  // TODO: Fetch projects from API
  const projects = [
    { id: 1, name: 'Project 1' },
    { id: 2, name: 'Project 2' },
  ];

  return (
    <div>
      <h2>Projects</h2>
      <ul>
        {projects.map((project) => (
          <li key={project.id}>{project.name}</li>
        ))}
      </ul>
    </div>
  );
};

export default ProjectList;
EOF

cat << EOF > "$project_dir/src/features/tasks/TaskList.js"
import React from 'react';

const TaskList = () => {
  // TODO: Fetch tasks from API
  const tasks = [
    { id: 1, title: 'Task 1', completed: false },
    { id: 2, title: 'Task 2', completed: true },
  ];

  return (
    <div>
      <h2>Tasks</h2>
      <ul>
        {tasks.map((task) => (
          <li key={task.id}>
            <input type="checkbox" checked={task.completed} readOnly />
            {task.title}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default TaskList;
EOF

cat << EOF > "$project_dir/src/features/analytics/Dashboard.js"
import React from 'react';

const Dashboard = () => {
  // TODO: Fetch analytics data from API
  const analyticsData = {
    totalProjects: 10,
    completedTasks: 50,
    pendingTasks: 20,
  };

  return (
    <div>
      <h2>Analytics Dashboard</h2>
      <div>Total Projects: {analyticsData.totalProjects}</div>
      <div>Completed Tasks: {analyticsData.completedTasks}</div>
      <div>Pending Tasks: {analyticsData.pendingTasks}</div>
    </div>
  );
};

export default Dashboard;
EOF

echo "Core feature components created for $project_name"
