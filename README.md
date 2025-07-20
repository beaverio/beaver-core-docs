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
3. Setup JavaScript dependencies: `npm run setup` (automatically runs after install)
4. Start development server: `npm run serve`
5. Browse to http://localhost:4567

## Building

* **Build**: `npm run build` - Generates static site in `_site/`
* **Debug**: `npm run debug` - Dry run with debug output
* **Serve**: `npm run serve` - Build and serve locally
* **Setup**: `npm run setup` - Copy required JavaScript dependencies
* **Clean**: `npm run clean` - Remove build artifacts and dependencies

## Troubleshooting

### Navigation highlighting not working

If the documentation loads but navigation highlighting appears broken (links don't highlight in blue), the JavaScript dependencies may be missing. This typically happens after:

- Fresh clones
- Dependency updates
- Manual deletion of files

**Solution**: Run `npm run setup` to restore the required JavaScript files:

```bash
npm run setup
```

This copies the necessary JavaScript dependencies (jQuery, Lunr.js, ImagesLoaded) from `node_modules` to the correct locations in the Slate theme.

## Deployment

This project is configured for automatic deployment to Vercel. Any push to the main branch will trigger a new deployment.
