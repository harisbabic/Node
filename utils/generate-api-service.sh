#!/bin/bash
# generate-api-service.sh

set -euo pipefail

project_dir="$1"
api_name="$2"

if [ -z "$project_dir" ] || [ -z "$api_name" ]; then
  echo "Usage: $0 <project-dir> <api-name>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir" || exit 1

mkdir -p src/services

cat << EOF > "src/services/${api_name}Service.js"
import axios from 'axios';

const API_BASE_URL = process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api';

const ${api_name}Service = {
  // Previous methods remain the same

  // Add a new method for handling file uploads
  upload: async (endpoint, file, onUploadProgress) => {
    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post(\`\${API_BASE_URL}/\${endpoint}\`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        },
        onUploadProgress
      });
      return response.data;
    } catch (error) {
      console.error('Error uploading file:', error);
      throw error;
    }
  },

  // Add a method for cancellable requests
  getCancellable: (endpoint) => {
    const source = axios.CancelToken.source();
    const promise = axios.get(\`\${API_BASE_URL}/\${endpoint}\`, {
      cancelToken: source.token
    });
    return { promise, cancel: () => source.cancel('Request cancelled') };
  }
};

export default ${api_name}Service;
EOF

echo "Enhanced API service ${api_name}Service created in $client_dir/src/services"
