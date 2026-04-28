const fs = require('fs');
const path = require('path');

const base = path.join(__dirname, '..');
const pagesDir = __dirname;
const svcDir = path.join(pagesDir, 'services');

const hamburgerHTML = `
        <button class="menu-toggle" id="menu-toggle" aria-label="Toggle menu">
            <span></span>
            <span></span>
            <span></span>
        </button>`;

const mobileScript = `
    <!-- Mobile Nav Script -->
    <script>
    (function() {
        var toggle = document.getElementById('menu-toggle');
        var links  = document.getElementById('nav-links');
        var navbar = document.getElementById('navbar');
        if (!toggle || !links) return;

        // Scroll effect
        window.addEventListener('scroll', function() {
            if (navbar) navbar.classList.toggle('scrolled', window.scrollY > 50);
        });

        // Open / close
        toggle.addEventListener('click', function(e) {
            e.stopPropagation();
            toggle.classList.toggle('active');
            links.classList.toggle('mobile-open');
        });

        // Close on link click
        links.querySelectorAll('a').forEach(function(a) {
            a.addEventListener('click', function() {
                toggle.classList.remove('active');
                links.classList.remove('mobile-open');
            });
        });

        // Close on outside tap
        document.addEventListener('click', function(e) {
            if (navbar && !navbar.contains(e.target)) {
                toggle.classList.remove('active');
                links.classList.remove('mobile-open');
            }
        });
    })();
    </script>`;

function fixFile(filePath) {
    if (!fs.existsSync(filePath)) return;
    let c = fs.readFileSync(filePath, 'utf8');
    let changed = false;

    // 1. Add id="navbar" to <nav class="navbar"> if missing
    if (c.includes('<nav class="navbar">')) {
        c = c.replace('<nav class="navbar">', '<nav class="navbar" id="navbar">');
        changed = true;
    }

    // 2. Add id="nav-links" to nav-links div if missing
    if (c.includes('<div class="nav-links">')) {
        c = c.replace('<div class="nav-links">', '<div class="nav-links" id="nav-links">');
        changed = true;
    }

    // 3. Add hamburger button if missing (only if nav structure exists)
    if (!c.includes('menu-toggle') && c.includes('id="nav-links"')) {
        // Insert hamburger AFTER the closing </div> of nav-links
        c = c.replace('</div>\n    </nav>', hamburgerHTML + '\n    </nav>');
        // fallback: try other whitespace
        if (!c.includes('menu-toggle')) {
            c = c.replace('</div>\r\n    </nav>', hamburgerHTML + '\r\n    </nav>');
        }
        changed = true;
    }

    // 4. Replace old Mobile Nav Toggle script with fresh one
    if (c.includes('<!-- Mobile Nav Toggle -->') || c.includes('Mobile Nav Script')) {
        c = c.replace(/\s*<!-- Mobile Nav (?:Toggle|Script) -->[\s\S]*?<\/script>/g, '');
        changed = true;
    }

    // 5. Inject fresh mobile script before </body>
    if (c.includes('id="menu-toggle"') && !c.includes('Mobile Nav Script')) {
        c = c.replace('</body>', mobileScript + '\n</body>');
        changed = true;
    }

    if (changed) {
        fs.writeFileSync(filePath, c, 'utf8');
        console.log('Fixed: ' + path.relative(pagesDir, filePath));
    } else {
        console.log('Skip (already OK): ' + path.relative(pagesDir, filePath));
    }
}

const pages = [
    'home.html','services.html','about.html','internships.html',
    'projects.html','contact.html','project-detail.html',
    'service-detail.html','automation.html'
];
pages.forEach(p => fixFile(path.join(pagesDir, p)));

if (fs.existsSync(svcDir)) {
    fs.readdirSync(svcDir)
        .filter(f => f.endsWith('.html'))
        .forEach(f => fixFile(path.join(svcDir, f)));
}

console.log('\nAll done!');
