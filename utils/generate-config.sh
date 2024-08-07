#!/bin/bash
# generate-config.sh

project_dir="$1"
config_type="$2"

if [ -z "$project_dir" ] || [ -z "$config_type" ]; then
  echo "Usage: $0 <project-dir> <config-type>"
  echo "Config types: webpack, babel, tsconfig"
  exit 1
fi

client_dir="$project_dir/client"
# cd "$client_dir"

case "$config_type" in
  webpack)
    cat << EOF > "$client_dir/webpack.config.js"
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[contenthash].js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.(scss|css)$/,
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader'],
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new MiniCssExtractPlugin({
      filename: '[name].[contenthash].css',
    }),
  ],
  devServer: {
    static: path.join(__dirname, 'dist'),
    port: 3000,
    hot: true,
  },
  optimization: {
    moduleIds: 'deterministic',
    runtimeChunk: 'single',
    splitChunks: {
      cacheGroups: {
        vendor: {
          test: /[\\/]node_modules[\\/]/,
          name: 'vendors',
          chunks: 'all',
        },
      },
    },
  },
};
EOF
    echo "Webpack config generated in $client_dir"
    ;;
  babel)
    cat << EOF > "$client_dir/.babelrc"
{
  "presets": [
    ["@babel/preset-env", {
      "targets": {
        "browsers": [">0.25%", "not ie 11", "not op_mini all"]
      }
    }],
    "@babel/preset-react"
  ],
  "plugins": [
    "@babel/plugin-proposal-class-properties",
    "@babel/plugin-transform-runtime"
  ]
}
EOF
    echo "Babel config generated in $client_dir"
    ;;
  tsconfig)
    cat << EOF > "$client_dir/tsconfig.json"
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "module": "esnext",
    "moduleResolution": "node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "src"
  },
  "include": ["src"]
}
EOF
    echo "TypeScript config generated in $client_dir"
    ;;
  *)
    echo "Invalid config type. Choose 'webpack', 'babel', or 'tsconfig'."
    exit 1
    ;;
esac
