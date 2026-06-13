const fs = require('fs');
const path = require('path');

const directoryPath = path.join(__dirname, 'website', 'website');

const faviconTags = `    <link rel="icon" type="image/x-icon" href="/favicon.ico">\n    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">\n    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">`;

function fixFavicons(dir) {
    const files = fs.readdirSync(dir);
    
    files.forEach(file => {
        const filePath = path.join(dir, file);
        const stat = fs.statSync(filePath);
        
        if (stat.isDirectory()) {
            fixFavicons(filePath);
        } else if (file.endsWith('.html')) {
            let content = fs.readFileSync(filePath, 'utf8');
            
            // Remove existing icon tags
            content = content.replace(/<link rel="icon"[^>]*>/g, '');
            content = content.replace(/<link rel="apple-touch-icon"[^>]*>/g, '');
            content = content.replace(/<link rel="shortcut icon"[^>]*>/g, '');
            
            // Insert new tags before </head>
            if (content.includes('</head>')) {
                content = content.replace('</head>', `${faviconTags}\n</head>`);
                fs.writeFileSync(filePath, content, 'utf8');
                console.log(`Fixed favicons in ${filePath}`);
            }
        } else if (file === 'generate-services.js') {
            let content = fs.readFileSync(filePath, 'utf8');
            
            content = content.replace(/<link rel="icon"[^>]*>/g, '');
            content = content.replace(/<link rel="apple-touch-icon"[^>]*>/g, '');
            
            if (content.includes('<!-- Open Graph')) {
                content = content.replace('<!-- Open Graph', `${faviconTags}\n    <!-- Open Graph`);
                fs.writeFileSync(filePath, content, 'utf8');
                console.log(`Fixed favicons in ${filePath}`);
            }
        }
    });
}

fixFavicons(directoryPath);
console.log('Done fixing all favicons!');
