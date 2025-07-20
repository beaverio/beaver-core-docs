#!/bin/bash

# Ensure JavaScript dependencies are properly set up for Slate documentation

echo "🔧 Setting up Slate documentation dependencies..."

# Create directories if they don't exist
mkdir -p source/slate/js/lib
mkdir -p _site/slate/js/lib

# Function to copy from node_modules if source doesn't exist
copy_if_missing() {
    local source_file="$1"
    local dest_file="$2"
    local node_modules_file="$3"
    
    if [ ! -f "$source_file" ]; then
        echo "📦 Copying $source_file from node_modules..."
        cp "$node_modules_file" "$source_file"
    else
        echo "✅ $source_file already exists"
    fi
    
    # Also copy to build directory
    if [ -f "$source_file" ]; then
        cp "$source_file" "$dest_file"
        echo "📋 Copied to build directory: $dest_file"
    fi
}

# Check and copy required JavaScript files
copy_if_missing "source/slate/js/lib/jquery.min.js" "_site/slate/js/lib/jquery.min.js" "node_modules/jquery/dist/jquery.min.js"
copy_if_missing "source/slate/js/lib/imagesloaded.min.js" "_site/slate/js/lib/imagesloaded.min.js" "node_modules/imagesloaded/imagesloaded.pkgd.min.js"
copy_if_missing "source/slate/js/lib/lunr.min.js" "_site/slate/js/lib/lunr.min.js" "node_modules/lunr/lunr.min.js"

echo "✨ Setup complete! All JavaScript dependencies are ready."
