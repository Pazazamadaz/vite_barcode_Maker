#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define the project name
PROJECT_NAME="vite-barcode-maker"

# Create a new Vite + Vue project
npm create vite@latest $PROJECT_NAME -- --template vue

# Change directory into the new project
cd $PROJECT_NAME

# Install dependencies
npm install

# Install JsBarcode for barcode generation
npm install jsbarcode

# Optional: Add TypeScript support (comment this out if not needed)
# npm install --save-dev typescript @types/node @vitejs/plugin-vue

# Final instruction
echo "✅ Project setup complete!"
echo "👉 To get started:"
echo "   cd $PROJECT_NAME"
echo "   npm run dev"