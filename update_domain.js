const fs = require('fs');
const path = require('path');

const directoryPath = path.join(__dirname, 'website', 'website');
const sitemapPath = path.join(directoryPath, 'sitemap.xml');

function replaceInFile(filePath) {
    let content = fs.readFileSync(filePath, 'utf8');
    if (content.includes('site2success.in')) {
        content = content.replace(/site2success\.in/g, 'site2success.online');
        fs.writeFileSync(filePath, content, 'utf8');
        console.log(`Updated domain in ${filePath}`);
    }
}

function updateDomain(dir) {
    const files = fs.readdirSync(dir);
    
    files.forEach(file => {
        const filePath = path.join(dir, file);
        const stat = fs.statSync(filePath);
        
        if (stat.isDirectory()) {
            updateDomain(filePath);
        } else if (file.endsWith('.html') || file.endsWith('.js') || file.endsWith('.xml') || file.endsWith('.json')) {
            replaceInFile(filePath);
        }
    });
}

// Update sitemap.xml explicitly if it's there
if (fs.existsSync(sitemapPath)) {
    replaceInFile(sitemapPath);
}

// Update everything else
updateDomain(directoryPath);

// Also check package.json or other root files if any, but mostly it's in website/website
console.log('Done replacing domain!');
