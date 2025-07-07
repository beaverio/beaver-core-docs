# Beaver Core API Documentation

Beautiful API documentation for Beaver Core, built with [Eleventy](https://www.11ty.dev/) and deployed on [Vercel](https://vercel.com).

🌐 **Live Site**: https://beaver-core-docs.vercel.app/

## Features

* **Beautiful Design**: Clean, professional API documentation layout
* **Syntax Highlighting**: Out-of-the-box support for [over 200 languages](https://prismjs.com/#supported-languages)
* **Search Functionality**: Full-text search powered by Lunr.js
* **Responsive Design**: Mobile-friendly documentation
* **Multi-language Examples**: Code samples in Shell, Ruby, Python, and JavaScript

## Development

Requires an LTS version of Node.js

1. Clone the repository
2. Install dependencies: `npm install`
3. Start development server: `npm run serve`
4. Browse to http://localhost:4567

## Building

* **Build**: `npm run build` - Generates static site in `_site/`
* **Debug**: `npm run debug` - Dry run with debug output
* **Serve**: `npm run serve` - Build and serve locally

## Deployment

This project is configured for automatic deployment to Vercel. Any push to the main branch will trigger a new deployment.
