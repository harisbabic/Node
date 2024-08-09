#!/bin/bash
# setup-animation.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"
animation_lib="${2:-framer-motion}"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir> [animation-library]"
fi

client_dir="$project_dir/client"
cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up $animation_lib for $client_dir"

case "$animation_lib" in
  framer-motion)
    npm install framer-motion

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { motion } from 'framer-motion';

const AnimatedBox = () => (
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
    npm install react-spring

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React from 'react';
import { useSpring, animated } from 'react-spring';

const AnimatedBox = () => {
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
    npm install react-transition-group

    # Create a sample animated component
    cat << EOF > src/components/AnimatedBox.js
import React, { useState } from 'react';
import { CSSTransition } from 'react-transition-group';
import './AnimatedBox.css';

const AnimatedBox = () => {
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

    # Create CSS for the animated component
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
    echo "Invalid animation library. Choose 'framer-motion', 'react-spring', or 'react-transition-group'."
    exit 1
    ;;
esac

echo "$animation_lib setup completed for $client_dir directory."
