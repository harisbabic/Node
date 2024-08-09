#!/bin/bash
# connect-components-to-redux.sh
# Usage: ./connect-components-to-redux.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

# Update App.js to use Redux Provider
cat << EOF > "$project_dir/src/App.js"
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import { Provider } from 'react-redux';
import store from './redux/store';
import Layout from './components/Layout';
import Home from './components/Home';
import ProjectList from './components/ProjectList';
import TaskList from './components/TaskList';

const App = () => {
  return (
    <Provider store={store}>
      <Router>
        <Layout>
          <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/projects" component={ProjectList} />
            <Route path="/tasks" component={TaskList} />
          </Switch>
        </Layout>
      </Router>
    </Provider>
  );
};

export default App;
EOF

# Update ProjectList component to use Redux
cat << EOF > "$project_dir/src/components/ProjectList.js"
import React, { useEffect } from 'react';
import { connect } from 'react-redux';
import { getProjects, deleteProject } from '../redux/actions/projectActions';

const ProjectList = ({ projects, getProjects, deleteProject }) => {
  useEffect(() => {
    getProjects();
  }, [getProjects]);

  return (
    <div>
      <h2>Projects</h2>
      <ul>
        {projects.map(project => (
          <li key={project._id}>
            {project.name}
            <button onClick={() => deleteProject(project._id)}>Delete</button>
          </li>
        ))}
      </ul>
    </div>
  );
};

const mapStateToProps = state => ({
  projects: state.projects.projects
});

export default connect(mapStateToProps, { getProjects, deleteProject })(ProjectList);
EOF

# Update TaskList component to use Redux
cat << EOF > "$project_dir/src/components/TaskList.js"
import React, { useEffect } from 'react';
import { connect } from 'react-redux';
import { getTasks, deleteTask } from '../redux/actions/taskActions';

const TaskList = ({ tasks, getTasks, deleteTask }) => {
  useEffect(() => {
    getTasks();
  }, [getTasks]);

  return (
    <div>
      <h2>Tasks</h2>
      <ul>
        {tasks.map(task => (
          <li key={task._id}>
            {task.title}
            <button onClick={() => deleteTask(task._id)}>Delete</button>
          </li>
        ))}
      </ul>
    </div>
  );
};

const mapStateToProps = state => ({
  tasks: state.tasks.tasks
});

export default connect(mapStateToProps, { getTasks, deleteTask })(TaskList);
EOF

echo "Components connected to Redux store for $project_name"
