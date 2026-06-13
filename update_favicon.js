const fs = require('fs');
const path = require('path');

const directoryPath = path.join(__dirname, 'website', 'website');

function updateFavicon(dir) {
    const files = fs.readdirSync(dir);
    
    files.forEach(file => {
        const filePath = path.join(dir, file);
        const stat = fs.statSync(filePath);
        
        if (stat.isDirectory()) {
            updateFavicon(filePath);
        } else if (file.endsWith('.html')) {
            let content = fs.readFileSync(filePath, 'utf8');
            
            // Calculate relative path to assets
            const relativePath = path.relative(path.dirname(filePath), path.join(directoryPath, 'assets', 'images', 'logo.png')).replace(/\\/g, '/');
            
            // Replace existing favicon link or add one if it doesn't exist
            if (content.includes('rel="icon"')) {
                content = content.replace(/<link rel="icon"[^>]+>/g, `<link rel="icon" type="image/png" href="${relativePath}">`);
            } else if (content.includes('</head>')) {
                content = content.replace('</head>', `    <link rel="icon" type="image/png" href="${relativePath}">\n</head>`);
            }
            
            fs.writeFileSync(filePath, content, 'utf8');
            console.log(`Updated favicon in ${filePath}`);
        } else if (file === 'generate-services.js') {
            let content = fs.readFileSync(filePath, 'utf8');
            if (content.includes('rel="icon"')) {
                content = content.replace(/<link rel="icon"[^>]+>/g, `<link rel="icon" type="image/png" href="../../assets/images/logo.png">`);
            } else if (content.includes('<!-- Open Graph')) {
                content = content.replace('<!-- Open Graph', `<link rel="icon" type="image/png" href="../../assets/images/logo.png">\n    <!-- Open Graph`);
            }
            fs.writeFileSync(filePath, content, 'utf8');
            console.log(`Updated favicon in ${filePath}`);
        }
    });
}

updateFavicon(directoryPath);
console.log('Done replacing favicons!');
