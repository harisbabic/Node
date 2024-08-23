#!/bin/bash
# setup-animation.sh
# Relative path: d/Node/utils/setup-animation.sh
# Description: Sets up animation library for the project

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name> [animation-library]"
    exit 1
fi

PROJECT_NAME="$1"
ANIMATION_LIB="${2:-framer-motion}"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"
CLIENT_DIR="$PROJECT_DIR/client"

log_info "Setting up $ANIMATION_LIB for $PROJECT_NAME"

# Ensure client directory exists
if [ ! -d "$CLIENT_DIR" ]; then
    log_error "Client directory does not exist: $CLIENT_DIR"
    exit 1
fi

cd "$CLIENT_DIR" || exit 1

case "$ANIMATION_LIB" in
  framer-motion)
    log_info "Installing framer-motion..."
    npm install framer-motion

    log_info "Creating sample animated component..."
    cat << EOF > src/components/AnimatedBox.tsx
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox: React.FC = () => (
  <motion.div
    initial={{ opacity: 0, scale: 0.5 }}
    animate={{ opacity: 1, scale: 1 }}
    transition={{ duration: 0.5 }}
    whileHover={{ scale: 1.1 }}
    whileTap={{ scale: 0.9 }}
    style={{
      width: 100,
      height: 100,
      background: 'blue',
      borderRadius: 10,
    }}
  />
);

export default AnimatedBox;
EOF
    ;;
  react-spring)
    log_info "Installing react-spring..."
    npm install react-spring

    log_info "Creating sample animated component..."
    cat << EOF > src/components/AnimatedBox.tsx
import React from 'react';
import { useSpring, animated } from 'react-spring';

const AnimatedBox: React.FC = () => {
  const props = useSpring({
    to: { opacity: 1, scale: 1 },
    from: { opacity: 0, scale: 0.5 },
    config: { duration: 500 },
  });

  return (
    <animated.div
      style={{
        ...props,
        width: 100,
        height: 100,
        background: 'blue',
        borderRadius: 10,
      }}
    />
  );
};

export default AnimatedBox;
EOF
    ;;
  react-transition-group)
    log_info "Installing react-transition-group..."
    npm install react-transition-group @types/react-transition-group

    log_info "Creating sample animated component..."
    cat << EOF > src/components/AnimatedBox.tsx
import React, { useState } from 'react';
import { CSSTransition } from 'react-transition-group';
import './AnimatedBox.css';

const AnimatedBox: React.FC = () => {
  const [inProp, setInProp] = useState(false);
  return (
    <div>
      <CSSTransition in={inProp} timeout={300} classNames="fade">
        <div className="box" />
      </CSSTransition>
      <button onClick={() => setInProp(!inProp)}>
        Click to Toggle
      </button>
    </div>
  );
};

export default AnimatedBox;
EOF

    log_info "Creating CSS for the animated component..."
    cat << EOF > src/components/AnimatedBox.css
.box {
  width: 100px;
  height: 100px;
  background: blue;
  border-radius: 10px;
}

.fade-enter {
  opacity: 0;
}
.fade-enter-active {
  opacity: 1;
  transition: opacity 300ms ease-in;
}
.fade-exit {
  opacity: 1;
}
.fade-exit-active {
  opacity: 0;
  transition: opacity 300ms ease-in;
}
EOF
    ;;
  *)
    log_error "Invalid animation library. Choose 'framer-motion', 'react-spring', or 'react-transition-group'."
    exit 1
    ;;
esac

log_info "$ANIMATION_LIB setup completed for $PROJECT_NAME"
