#!/bin/bash
# setup-dev-environment.sh
# Usage: ./setup-dev-environment.sh <project-name>

project_name=$1
project_dir="/d/Node/projects/$project_name"

# Install development dependencies
npm install --save-dev webpack webpack-cli webpack-dev-server babel-loader @babel/core @babel/preset-env @babel/preset-react

# Create webpack config
cat << EOF > "$project_dir/webpack.config.js"
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env', '@babel/preset-react']
          }
        }
      }
    ]
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html'
    })
  ],
  devServer: {
    contentBase: path.join(__dirname, 'dist'),
    compress: true,
    port: 3000,
    hot: true
  }
};
EOF

# Update package.json scripts
jq '.scripts += {
  "start": "webpack serve --mode development --open",
  "build": "webpack --mode production"
}' "$project_dir/package.json" > temp.json && mv temp.json "$project_dir/package.json"

echo "Development environment with hot reloading set up for $project_name"
