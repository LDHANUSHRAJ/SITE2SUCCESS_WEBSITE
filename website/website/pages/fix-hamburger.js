const fs = require('fs');
const path = require('path');
const pagesDir = __dirname;
const svcDir = path.join(pagesDir, 'services');

const PROPER_BTN = '<button class="menu-toggle" id="menu-toggle" aria-label="Open menu"><span></span><span></span><span></span></button>';

function fix(filePath) {
    if (!fs.existsSync(filePath)) return;
    let c = fs.readFileSync(filePath, 'utf8');
    let changed = false;

    // Case 1: old bare div without spans
    if (c.includes('<div class="menu-toggle">') && !c.includes('<span></span>')) {
        c = c.replace('<div class="menu-toggle">\n            \n        </div>', PROPER_BTN);
        c = c.replace('<div class="menu-toggle"></div>', PROPER_BTN);
        c = c.replace('<div class="menu-toggle">', PROPER_BTN + '<!-- removed old');
        changed = true;
    }

    // Case 2: has id but no spans  
    if (c.includes('id="menu-toggle"') && !c.includes('<span></span>')) {
        c = c.replace(/<(?:div|button)[^>]*id="menu-toggle"[^>]*>(?:<\/(?:div|button)>)?/, PROPER_BTN);
        changed = true;
    }

    // Case 3: already a proper button with spans — just ensure id is there
    if (c.includes('class="menu-toggle"') && !c.includes('id="menu-toggle"') && c.includes('<span></span>')) {
        c = c.replace('class="menu-toggle"', 'class="menu-toggle" id="menu-toggle"');
        changed = true;
    }

    if (changed) {
        fs.writeFileSync(filePath, c, 'utf8');
        console.log('Fixed: ' + path.basename(filePath));
    } else {
        console.log('OK:    ' + path.basename(filePath));
    }
}

const pages = ['home.html','services.html','about.html','internships.html','projects.html','contact.html','project-detail.html','service-detail.html','automation.html'];
pages.forEach(p => fix(path.join(pagesDir, p)));
if (fs.existsSync(svcDir)) {
    fs.readdirSync(svcDir).filter(f => f.endsWith('.html')).forEach(f => fix(path.join(svcDir, f)));
}
console.log('\nAll done!');
