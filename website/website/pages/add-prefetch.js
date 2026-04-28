const fs = require('fs');
const dir = 'c:\\Users\\Dhanu\\Downloads\\Site2Sucess_WEBSITE\\website\\website\\pages';
const pages = ['services.html','about.html','projects.html','internships.html','contact.html'];
const hint = '\n    <link rel="dns-prefetch" href="https://images.unsplash.com">\n    <link rel="preconnect" href="https://images.unsplash.com" crossorigin>';

pages.forEach(p => {
  const f = dir + '\\' + p;
  if (!fs.existsSync(f)) return;
  let c = fs.readFileSync(f, 'utf8');
  if (!c.includes('dns-prefetch')) {
    c = c.replace(
      '<link rel="preconnect" href="https://fonts.googleapis.com">',
      '<link rel="preconnect" href="https://fonts.googleapis.com">' + hint
    );
    fs.writeFileSync(f, c, 'utf8');
    console.log('Updated: ' + p);
  }
});
console.log('Done!');
