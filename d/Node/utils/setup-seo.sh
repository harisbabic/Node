#!/bin/bash
# setup-seo.sh
# Relative path: d/Node/utils/setup-seo.sh
# Description: Sets up SEO for the project

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"
CLIENT_DIR="$PROJECT_DIR/client"

log_info "Setting up SEO for $PROJECT_NAME"

# Ensure client directory exists
if [ ! -d "$CLIENT_DIR" ]; then
    log_error "Client directory does not exist: $CLIENT_DIR"
    exit 1
fi

cd "$CLIENT_DIR" || exit 1

# Install react-helmet for managing document head
log_info "Installing react-helmet-async..."
npm install react-helmet-async

# Create SEO component
log_info "Creating SEO component..."
cat << EOF > src/components/SEO.tsx
import React from 'react';
import { Helmet } from 'react-helmet-async';

interface SEOProps {
  title: string;
  description: string;
  keywords: string;
  image?: string;
  url: string;
}

const SEO: React.FC<SEOProps> = ({ title, description, keywords, image, url }) => (
  <Helmet>
    <title>{title}</title>
    <meta name="description" content={description} />
    <meta name="keywords" content={keywords} />
    <meta property="og:title" content={title} />
    <meta property="og:description" content={description} />
    {image && <meta property="og:image" content={image} />}
    <meta property="og:url" content={url} />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content={title} />
    <meta name="twitter:description" content={description} />
    {image && <meta name="twitter:image" content={image} />}
    <link rel="canonical" href={url} />
  </Helmet>
);

export default SEO;
EOF

# Create sitemap generator
log_info "Creating sitemap generator..."
mkdir -p "$CLIENT_DIR/scripts"
cat << EOF > "$CLIENT_DIR/scripts/generate-sitemap.ts"
import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';

dotenv.config({ path: path.join(__dirname, '../../.env') });

const baseUrl = process.env.BASE_URL || \`http://localhost:\${process.env.PORT || 3000}\`;
const publicDir = path.join(__dirname, '../public');

const getPages = (): string[] => {
  // This is a simplified example. In reality, you'd want to
  // generate this list based on your actual routes.
  return ['', 'register'];
};

const generateSitemap = (): void => {
  const pages = getPages();
  const sitemap = \`<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  \${pages.map(page => \`
  <url>
    <loc>\${baseUrl}/\${page}</loc>
    <lastmod>\${new Date().toISOString().split('T')[0]}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  \`).join('')}
</urlset>\`;

  fs.writeFileSync(path.join(publicDir, 'sitemap.xml'), sitemap);
  console.log('Sitemap generated successfully');

  // Generate robots.txt
  const robotsTxt = \`User-agent: *
Allow: /

Sitemap: \${baseUrl}/sitemap.xml
\`;
  fs.writeFileSync(path.join(publicDir, 'robots.txt'), robotsTxt);
  console.log('robots.txt generated successfully');
};

generateSitemap();
EOF

# Run the sitemap generator
log_info "Running sitemap generator..."
npx ts-node "$CLIENT_DIR/scripts/generate-sitemap.ts"

# Add sitemap generation script to package.json
log_info "Adding sitemap generation script to package.json..."
npm pkg set scripts.generate-sitemap="ts-node scripts/generate-sitemap.ts"

log_info "SEO setup completed for $PROJECT_NAME"
