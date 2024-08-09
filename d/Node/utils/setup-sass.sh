#!/bin/bash
# setup-sass.sh

project_dir="$1"

if [ -z "$project_dir" ]; then
  echo "Usage: $0 <project-dir>"
  exit 1
fi

client_dir="$project_dir/client"
cd "$client_dir"

# Install SASS
npm install sass

# Create SASS directory structure
mkdir -p src/styles/abstracts src/styles/base src/styles/components src/styles/layout src/styles/pages

# Create main SASS file
cat << EOF > src/styles/main.scss
@import 'abstracts/variables';
@import 'abstracts/mixins';

@import 'base/reset';
@import 'base/typography';

@import 'components/buttons';
@import 'components/forms';

@import 'layout/header';
@import 'layout/footer';

@import 'pages/home';
EOF

# Create example files
cat << EOF > src/styles/abstracts/_variables.scss
\$primary-color: #0070f3;
\$secondary-color: #0070f3;
\$font-stack: Arial, sans-serif;
EOF

cat << EOF > src/styles/abstracts/_mixins.scss
@mixin flexCenter {
  display: flex;
  justify-content: center;
  align-items: center;
}
EOF

cat << EOF > src/styles/base/_reset.scss
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
EOF

# Update package.json scripts
npm pkg set scripts.sass="sass src/styles/main.scss src/styles/main.css"
npm pkg set scripts.sass:watch="sass src/styles/main.scss src/styles/main.css --watch"

echo "SASS setup completed for $client_dir directory."
