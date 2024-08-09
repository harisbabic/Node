#!/bin/bash
# generate-frontend-structure.sh
# Usage: ./generate-frontend-structure.sh <project-name>

project_name=$1

if [ -z "$project_name" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

client_src="/d/Node/projects/$project_name/client/src"

# Create directories
mkdir -p "$client_src/components"
mkdir -p "$client_src/views"
mkdir -p "$client_src/styles"

# Generate main App component
cat << EOF > "$client_src/App.js"
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Navigation from './components/Navigation';
import Dashboard from './views/Dashboard';
import Clients from './views/Clients';
import Projects from './views/Projects';
import Invoices from './views/Invoices';
import './styles/App.css';

function App() {
  return (
    <Router>
      <div className="App">
        <Navigation />
        <main>
          <Switch>
            <Route exact path="/" component={Dashboard} />
            <Route path="/clients" component={Clients} />
            <Route path="/projects" component={Projects} />
            <Route path="/invoices" component={Invoices} />
          </Switch>
        </main>
      </div>
    </Router>
  );
}

export default App;
EOF

# Generate Navigation component
cat << EOF > "$client_src/components/Navigation.js"
import React from 'react';
import { Link } from 'react-router-dom';
import '../styles/Navigation.css';

function Navigation() {
  return (
    <nav className="navigation">
      <ul>
        <li><Link to="/">Dashboard</Link></li>
        <li><Link to="/clients">Clients</Link></li>
        <li><Link to="/projects">Projects</Link></li>
        <li><Link to="/invoices">Invoices</Link></li>
      </ul>
    </nav>
  );
}

export default Navigation;
EOF

# Generate view components
views=("Dashboard" "Clients" "Projects" "Invoices")

for view in "${views[@]}"; do
  cat << EOF > "$client_src/views/$view.js"
import React from 'react';
import '../styles/$view.css';

function $view() {
  return (
    <div className="${view,,}-view">
      <h1>$view</h1>
      {/* Add your $view content here */}
    </div>
  );
}

export default $view;
EOF

  # Generate corresponding CSS file
  touch "$client_src/styles/$view.css"
done

# Generate App.css
cat << EOF > "$client_src/styles/App.css"
.App {
  display: flex;
  min-height: 100vh;
}

main {
  flex-grow: 1;
  padding: 20px;
}
EOF

# Generate Navigation.css
cat << EOF > "$client_src/styles/Navigation.css"
.navigation {
  width: 200px;
  background-color: #f0f0f0;
  padding: 20px;
}

.navigation ul {
  list-style-type: none;
  padding: 0;
}

.navigation li {
  margin-bottom: 10px;
}

.navigation a {
  text-decoration: none;
  color: #333;
}

.navigation a:hover {
  color: #0070f3;
}
EOF

echo "Frontend structure generated for $project_name"
