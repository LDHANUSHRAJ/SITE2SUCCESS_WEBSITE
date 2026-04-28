const fs = require('fs');
const path = require('path');

function fix(f) {
  if (!fs.existsSync(f)) return;
  let c = fs.readFileSync(f, 'utf8');
  if (c.includes('>KIRA<') && !c.includes('early-tag')) {
    c = c.replace(/>KIRA<\/a>/g, '>KIRA<span class="early-tag">Early Access</span></a>');
    fs.writeFileSync(f, c, 'utf8');
    console.log('Updated: ' + path.basename(f));
  }
}

const dir = 'c:\\Users\\Dhanu\\Downloads\\Site2Sucess_WEBSITE\\website\\website\\pages';
['home.html','services.html','automation.html','internships.html','projects.html','about.html','contact.html','project-detail.html','service-detail.html'].forEach(f => fix(path.join(dir, f)));
fix('c:\\Users\\Dhanu\\Downloads\\Site2Sucess_WEBSITE\\website\\website\\index.html');
const svcDir = path.join(dir, 'services');
if (fs.existsSync(svcDir)) {
  fs.readdirSync(svcDir).filter(f => f.endsWith('.html')).forEach(f => fix(path.join(svcDir, f)));
}
console.log('Done!');
