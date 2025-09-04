#!/bin/bash

# Deployment script for The Sakai Group website
# This script prepares the site for Vercel deployment

echo "🚀 Preparing The Sakai Group website for deployment..."

# Check if required files exist
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found"
    exit 1
fi

if [ ! -f "styles.css" ]; then
    echo "❌ Error: styles.css not found"
    exit 1
fi

if [ ! -d "images" ]; then
    echo "❌ Error: images directory not found"
    exit 1
fi

if [ ! -d "public" ]; then
    echo "❌ Error: public directory (favicons) not found"
    exit 1
fi

echo "✅ All required files found"

# Verify favicon files
if [ -f "public/favicon.ico" ]; then
    echo "✅ Favicon files ready"
else
    echo "⚠️  Warning: Some favicon files may be missing"
fi

# Check if vercel.json exists
if [ -f "vercel.json" ]; then
    echo "✅ Vercel configuration ready"
else
    echo "❌ Error: vercel.json not found"
    exit 1
fi

echo "🎉 Site is ready for Vercel deployment!"
echo ""
echo "To deploy:"
echo "1. Install Vercel CLI: npm i -g vercel"
echo "2. Run: vercel"
echo "3. Follow the prompts to deploy"
echo ""
echo "Or push to GitHub and connect to Vercel for automatic deployments."
