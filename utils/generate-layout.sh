#!/bin/bash
# generate-layout.sh

project_dir="$1"
layout_type="$2"

if [ -z "$project_dir" ] || [ -z "$layout_type" ]; then
  echo "Usage: $0 <project-dir> <layout-type>"
  echo "Layout types: dashboard, landing"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

mkdir -p "$client_dir/src/layouts"

generate_layout() {
  local name="$1"
  local file="$client_dir/src/layouts/${name}Layout.js"

  cat << EOF > "$file"
import React from 'react';
import styled from 'styled-components';

const ${name}Wrapper = styled.div\`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
\`;

const Header = styled.header\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const Main = styled.main\`
  flex: 1;
  padding: 1rem;
\`;

const Footer = styled.footer\`
  padding: 1rem;
  background-color: \${({ theme }) => theme.colors.background};
\`;

const ${name}Layout = ({ children }) => (
  <${name}Wrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </${name}Wrapper>
);

export default ${name}Layout;
EOF

  echo "${name} layout generated in $file"
}

case "$layout_type" in
  dashboard)
    generate_layout "Dashboard"
    ;;
  landing)
    generate_layout "Landing"
    ;;
  *)
    echo "Invalid layout type. Choose 'dashboard' or 'landing'."
    exit 1
    ;;
esac
