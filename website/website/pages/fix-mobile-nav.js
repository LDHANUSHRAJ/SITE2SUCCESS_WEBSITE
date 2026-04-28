const fs = require('fs');
const path = require('path');

const dir = 'c:\\Users\\Dhanu\\Downloads\\Site2Sucess_WEBSITE\\website\\website\\pages';
const svcDir = path.join(dir, 'services');

// Mobile nav toggle script to inject before </body>
const mobileNavScript = `
    <!-- Mobile Nav Toggle -->
    <script>
    (function() {
        var navbar  = document.getElementById('navbar');
        var toggle  = document.getElementById('menu-toggle');
        var links   = document.getElementById('nav-links');
        if (!toggle || !links) return;

        // Scroll effect
        window.addEventListener('scroll', function() {
            if (navbar) navbar.classList.toggle('scrolled', window.scrollY > 50);
        });

        // Hamburger toggle
        toggle.addEventListener('click', function() {
            toggle.classList.toggle('active');
            links.classList.toggle('mobile-open');
        });

        // Close on link click
        links.querySelectorAll('.nav-item').forEach(function(a) {
            a.addEventListener('click', function() {
                toggle.classList.remove('active');
                links.classList.remove('mobile-open');
            });
        });

        // Close on outside tap
        document.addEventListener('click', function(e) {
            if (!navbar.contains(e.target)) {
                toggle.classList.remove('active');
                links.classList.remove('mobile-open');
            }
        });
    })();
    </script>`;

// Mobile nav CSS to inject (if not already in main.css scope)
const mobileNavCSS = `
        /* ── Mobile Nav (shared) ── */
        @media (max-width: 1024px) {
            .nav-links {
                position: fixed;
                top: 80px;
                left: 50%;
                transform: translateX(-50%) translateY(-20px);
                width: calc(100% - 48px);
                max-width: 400px;
                flex-direction: column;
                gap: 0.5rem;
                padding: 1.5rem;
                background: rgba(255,255,255,0.97);
                backdrop-filter: blur(20px) saturate(180%);
                -webkit-backdrop-filter: blur(20px) saturate(180%);
                border-radius: 24px;
                border: 1px solid rgba(255,255,255,0.6);
                box-shadow: 0 8px 32px rgba(0,0,0,0.06);
                opacity: 0;
                visibility: hidden;
                pointer-events: none;
                transition: all 0.4s cubic-bezier(0.4,0,0.2,1);
                z-index: 999;
            }
            .nav-links.mobile-open {
                opacity: 1;
                visibility: visible;
                pointer-events: auto;
                transform: translateX(-50%) translateY(0);
            }
            .nav-item {
                width: 100%;
                text-align: center;
                padding: 0.875rem 1.25rem;
            }
            .menu-toggle {
                display: flex !important;
            }
            .menu-toggle.active span:nth-child(1) { transform: rotate(45deg) translate(5px,5px); }
            .menu-toggle.active span:nth-child(2) { opacity: 0; }
            .menu-toggle.active span:nth-child(3) { transform: rotate(-45deg) translate(5px,-5px); }
        }`;

function fixPage(filePath) {
    if (!fs.existsSync(filePath)) return;
    let c = fs.readFileSync(filePath, 'utf8');
    let changed = false;

    // Inject mobile nav script before </body> if not already present
    if (!c.includes('menu-toggle') && c.includes('nav-links')) {
        // page has nav but no toggle — skip (shouldn't happen)
    }

    if (c.includes('id="menu-toggle"') && !c.includes('Mobile Nav Toggle')) {
        c = c.replace('</body>', mobileNavScript + '\n</body>');
        changed = true;
    }

    // Inject mobile CSS if page has inline <style> and no mobile nav media query
    if (c.includes('<style>') && !c.includes('mobile-open') && c.includes('nav-links')) {
        c = c.replace('</style>', mobileNavCSS + '\n        </style>');
        changed = true;
    }

    if (changed) {
        fs.writeFileSync(filePath, c, 'utf8');
        console.log('Fixed: ' + path.basename(filePath));
    }
}

const pages = ['services.html','about.html','internships.html','projects.html','contact.html','project-detail.html','service-detail.html','automation.html'];
pages.forEach(p => fixPage(path.join(dir, p)));
if (fs.existsSync(svcDir)) {
    fs.readdirSync(svcDir).filter(f => f.endsWith('.html')).forEach(f => fixPage(path.join(svcDir, f)));
}
console.log('All done!');
