#!/bin/bash
# setup-performance-optimization.sh

set -euo pipefail

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

# Add a utility for image optimization
mkdir -p src/utils
cat << EOF > src/utils/imageOptimization.js
export const getOptimizedImageUrl = (url, width, height) => {
  // This is a placeholder. In a real-world scenario, you'd integrate with
  // an image optimization service like Cloudinary or Imgix.
  return `${url}?w=${width}&h=${height}&fit=crop&auto=format`;
};
EOF

# Add a custom hook for intersection observer (for lazy loading)
cat << EOF > src/utils/useIntersectionObserver.js
import { useState, useEffect } from 'react';

const useIntersectionObserver = (ref, options = {}) => {
  const [isIntersecting, setIsIntersecting] = useState(false);

  useEffect(() => {
    const observer = new IntersectionObserver(([entry]) => {
      setIsIntersecting(entry.isIntersecting);
    }, options);

    if (ref.current) {
      observer.observe(ref.current);
    }

    return () => {
      observer.disconnect();
    };
  }, [ref, options]);

  return isIntersecting;
};

export default useIntersectionObserver;
EOF

echo "Enhanced performance optimization setup completed for $client_dir"
