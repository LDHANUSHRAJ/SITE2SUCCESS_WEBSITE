$services = @(
    @{id = "whatsapp-ai-agent"; title = "WhatsApp AI Agent"; cat = "ai"; catLabel = "AI Agents &amp; Chatbots"; subtitle = "Automatically replies to customer enquiries, captures leads, and answers FAQs on your existing WhatsApp number, 24/7."; overview = "Our WhatsApp AI Agent connects to your existing business number and handles customer conversations automatically. It understands natural language, answers product questions, captures lead information, and routes complex queries to your team — all without you lifting a finger."; features = @("24/7 automated replies on your WhatsApp Business number", "Natural language understanding for customer queries", "Automatic lead capture and qualification", "FAQ handling with instant accurate responses", "Smart escalation to human agents when needed", "Multi-language support for diverse customer bases"); bestFor = @("Retail &amp; E-commerce", "Clinics &amp; Healthcare", "Real Estate", "Education &amp; Coaching"); delivery = "1-2 Weeks"; type = "AI Agent" },
    @{id = "website-lead-capture-bot"; title = "Website Lead Capture Bot"; cat = "ai"; catLabel = "AI Agents &amp; Chatbots"; subtitle = "Engages website visitors instantly, qualifies them, and collects their details — no forms, no drop-offs."; overview = "Replace boring forms with an intelligent chatbot that greets visitors, asks the right questions, and captures their details conversationally. It reduces bounce rates and increases lead conversion by making the experience feel natural and instant."; features = @("Instant visitor engagement on page load", "Conversational lead qualification", "Smart data collection without forms", "Real-time lead notifications to your team", "Integration with CRM and email tools", "Custom branding to match your website"); bestFor = @("Service Businesses", "SaaS Companies", "Agencies", "Consultants"); delivery = "1 Week"; type = "AI Bot" },
    @{id = "ai-appointment-booking"; title = "AI Appointment Booking Agent"; cat = "ai"; catLabel = "AI Agents &amp; Chatbots"; subtitle = "Lets customers book, reschedule, and receive reminders automatically without any manual effort."; overview = "Automate your entire booking process. Customers can book appointments via WhatsApp or your website, receive confirmations and reminders, and reschedule — all handled by an AI agent that syncs with your calendar in real-time."; features = @("Automated booking via WhatsApp or website", "Calendar sync with Google Calendar, Calendly, etc.", "Automatic confirmation and reminder messages", "Easy rescheduling and cancellation handling", "No-show reduction with smart reminders", "Multi-staff and multi-location support"); bestFor = @("Clinics &amp; Salons", "Coaching Centres", "Consultants", "Service Providers"); delivery = "1-2 Weeks"; type = "AI Agent" },
    @{id = "ai-customer-support"; title = "AI Customer Support Agent"; cat = "ai"; catLabel = "AI Agents &amp; Chatbots"; subtitle = "Resolves your most common support questions instantly and escalates to a human only when needed."; overview = "Train an AI agent on your business knowledge base — product details, policies, troubleshooting guides — and let it handle the top 80% of support queries automatically. It escalates complex issues to your team with full context."; features = @("Handles top 80% of support queries automatically", "Trained on your specific business knowledge", "Smart escalation with full conversation context", "Available 24/7 across WhatsApp and web", "Reduces support team workload significantly", "Continuous learning from new interactions"); bestFor = @("E-commerce", "SaaS Products", "Service Companies", "Tech Startups"); delivery = "2 Weeks"; type = "AI Agent" },
    @{id = "ai-sales-qualification"; title = "AI Sales Qualification Agent"; cat = "ai"; catLabel = "AI Agents &amp; Chatbots"; subtitle = "Scores incoming leads and tells your sales team exactly who to prioritise and call first."; overview = "Not all leads are equal. This AI agent scores and qualifies every incoming lead based on your criteria — budget, timeline, requirements — and sends your sales team a prioritised list so they focus only on high-intent prospects."; features = @("Automated lead scoring based on your criteria", "Real-time qualification via chat conversations", "Priority alerts for hot leads", "Integration with your CRM pipeline", "Custom qualification frameworks", "Detailed lead insights for your sales team"); bestFor = @("B2B Companies", "Real Estate", "Financial Services", "High-Ticket Services"); delivery = "2 Weeks"; type = "AI Agent" },
    @{id = "internal-knowledge-bot"; title = "Internal Team Knowledge Bot"; cat = "ai"; catLabel = "AI Agents &amp; Chatbots"; subtitle = "Lets your staff instantly query SOPs, policies, and company information instead of asking a manager."; overview = "Upload your SOPs, HR policies, product manuals, and company documents. Your team can then ask the bot any question and get instant, accurate answers — saving hours of back-and-forth with managers."; features = @("Instant answers from your company knowledge base", "Supports SOPs, policies, manuals, and FAQs", "Searchable via WhatsApp or internal portal", "Reduces dependency on managers for routine queries", "Always up-to-date with document syncing", "Secure access controls per department"); bestFor = @("Growing Teams", "HR Departments", "Operations", "Multi-Branch Businesses"); delivery = "2 Weeks"; type = "Knowledge Bot" },
    @{id = "lead-followup-automation"; title = "Lead Follow-Up Automation"; cat = "auto"; catLabel = "Automation &amp; Integrations"; subtitle = "Sends personalised WhatsApp or email sequences automatically the moment a new lead comes in."; overview = "Never lose a lead to slow follow-up again. The moment someone fills a form or sends an enquiry, our system triggers a personalised WhatsApp or email sequence — nurturing them until they convert or your sales team takes over."; features = @("Instant follow-up within seconds of lead capture", "Personalised WhatsApp and email sequences", "Multi-step drip campaigns", "Automatic tagging and segmentation", "Follow-up reminders for your sales team", "Performance tracking and analytics"); bestFor = @("Real Estate", "Education", "Service Businesses", "D2C Brands"); delivery = "1 Week"; type = "Automation" },
    @{id = "crm-automation"; title = "CRM Automation"; cat = "auto"; catLabel = "Automation &amp; Integrations"; subtitle = "Auto-logs leads, updates deal stages, and alerts your sales team. Works with Notion, HubSpot, Zoho, and Google Sheets."; overview = "Stop manually entering leads into spreadsheets. Our CRM automation captures leads from all your sources, logs them automatically, updates deal stages as they progress, and sends alerts to your team — all without touching a single cell."; features = @("Auto-log leads from forms, WhatsApp, and ads", "Deal stage tracking and updates", "Team alerts and task assignments", "Works with Notion, HubSpot, Zoho, Google Sheets", "Custom pipeline stages for your workflow", "Automated reporting and dashboards"); bestFor = @("Sales Teams", "Agencies", "Consultants", "B2B Companies"); delivery = "1-2 Weeks"; type = "Automation" },
    @{id = "workflow-automation"; title = "Multi-Tool Workflow Automation"; cat = "auto"; catLabel = "Automation &amp; Integrations"; subtitle = "Connects your existing tools — forms, CRM, WhatsApp, email, calendar — into one seamless automated pipeline."; overview = "Your business probably uses 5-10 different tools that don't talk to each other. We connect them into one automated pipeline — so data flows seamlessly from forms to CRM, triggers WhatsApp messages, updates calendars, and sends emails without any manual work."; features = @("Connect forms, CRM, WhatsApp, email, and calendar", "End-to-end automated data flow", "Custom trigger and action rules", "Error handling and retry logic", "Works with Zapier, Make, and custom APIs", "Scalable for complex multi-step workflows"); bestFor = @("Operations Teams", "Growing Startups", "Agencies", "Multi-Department Businesses"); delivery = "1-2 Weeks"; type = "Automation" },
    @{id = "invoice-payment-reminders"; title = "Invoice &amp; Payment Reminders"; cat = "auto"; catLabel = "Automation &amp; Integrations"; subtitle = "Automatically follows up on pending payments via WhatsApp or email, reducing delays without manual chasing."; overview = "Stop chasing payments manually. Our system automatically sends polite, professional payment reminders via WhatsApp or email at the right intervals — reducing late payments and improving your cash flow without any awkward conversations."; features = @("Automated WhatsApp and email payment reminders", "Customisable reminder schedules", "Overdue escalation workflows", "Payment confirmation tracking", "Professional, branded message templates", "Integration with accounting tools"); bestFor = @("Freelancers", "Agencies", "Service Providers", "B2B Companies"); delivery = "1 Week"; type = "Automation" },
    @{id = "business-website-chatbot"; title = "Business Website + AI Chatbot"; cat = "web"; catLabel = "Web &amp; App Development"; subtitle = "A professional website built with an AI chatbot embedded from day one — designed to generate leads, not just look good."; overview = "We build modern, high-performance business websites with an AI chatbot integrated from the start. Your website won't just look great — it will actively capture leads, answer visitor questions, and drive conversions 24/7."; features = @("Modern, responsive design that looks premium", "AI chatbot embedded from day one", "SEO-optimised for search visibility", "Fast-loading, performance-tuned pages", "Mobile-first design approach", "CMS integration for easy content updates"); bestFor = @("Small Businesses", "Startups", "Consultants", "Service Providers"); delivery = "2-3 Weeks"; type = "Development" },
    @{id = "ecommerce-store"; title = "E-Commerce Store"; cat = "web"; catLabel = "Web &amp; App Development"; subtitle = "A complete online store with product catalogue, payment gateway, and order tracking, built for D2C brands and retailers."; overview = "Launch your online store with everything you need — product catalogue, shopping cart, secure payments, and order tracking. We build e-commerce platforms that are easy to manage and optimised for conversions."; features = @("Product catalogue with categories and filters", "Secure payment gateway integration", "Order tracking and management dashboard", "Inventory management system", "Mobile-responsive shopping experience", "SEO and marketing tools built-in"); bestFor = @("D2C Brands", "Retailers", "Food &amp; Beverage", "Fashion &amp; Lifestyle"); delivery = "3-4 Weeks"; type = "Development" },
    @{id = "mobile-app-development"; title = "Mobile App Development"; cat = "web"; catLabel = "Web &amp; App Development"; subtitle = "Custom Android and iOS apps for businesses that need a customer-facing product or an internal operations tool."; overview = "We build custom mobile applications for Android and iOS — whether you need a customer-facing app to serve your users or an internal tool to streamline your team's operations. Built for performance, usability, and scale."; features = @("Native Android and iOS development", "Cross-platform for cost efficiency", "Push notifications and real-time updates", "Offline functionality where needed", "Backend API development included", "App store submission and launch support"); bestFor = @("Startups", "Service Businesses", "Enterprise Teams", "Product Companies"); delivery = "4-8 Weeks"; type = "Development" },
    @{id = "admin-dashboard-portals"; title = "Admin Dashboard &amp; Portals"; cat = "web"; catLabel = "Web &amp; App Development"; subtitle = "Custom-built dashboards for managing orders, clients, bookings, or teams — designed around your exact workflow."; overview = "Off-the-shelf tools don't fit every business. We build custom admin dashboards and portals designed around your exact workflow — whether you need to manage orders, clients, bookings, inventory, or teams."; features = @("Custom-designed for your specific workflow", "Real-time data and analytics", "User roles and access controls", "CRUD operations for all your data", "Integration with your existing tools", "Mobile-responsive admin interface"); bestFor = @("Operations Teams", "Multi-Location Businesses", "Booking Services", "Logistics"); delivery = "3-4 Weeks"; type = "Development" }
)

$checkSvg = '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="20 6 9 17 4 12"></polyline></svg>'
$chevSvg = '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="9 18 15 12 9 6"></polyline></svg>'

foreach ($s in $services) {
    $catClass = $s.cat
    $featuresHtml = ""
    foreach ($f in $s.features) { $featuresHtml += "                <li>$checkSvg $f</li>`n" }
    $useCasesHtml = ""
    foreach ($u in $s.bestFor) { $useCasesHtml += "                    <span>$u</span>`n" }

    $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$($s.title) — Site2Success</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../assets/css/main.css">
    <link rel="stylesheet" href="../../assets/css/pages.css">
    <style>
        .sd-hero{padding:8rem 2rem 3rem;max-width:1200px;margin:0 auto}
        .sd-breadcrumb{display:flex;align-items:center;gap:.5rem;margin-bottom:2rem;font-size:.875rem;color:var(--gray-400)}
        .sd-breadcrumb a{color:var(--gray-400);transition:color .2s}.sd-breadcrumb a:hover{color:var(--coral)}
        .sd-breadcrumb svg{width:14px;height:14px;opacity:.5}
        .sd-badge{display:inline-flex;align-items:center;gap:.5rem;padding:.4rem 1rem;border-radius:100px;font-size:.8rem;font-weight:600;margin-bottom:1.25rem}
        .sd-badge.ai{background:rgba(74,144,217,.1);color:#4A90D9}.sd-badge.auto{background:rgba(40,200,64,.1);color:#28C840}.sd-badge.web{background:rgba(255,107,74,.1);color:var(--coral)}
        .sd-dot{width:8px;height:8px;border-radius:50%}.sd-badge.ai .sd-dot{background:#4A90D9}.sd-badge.auto .sd-dot{background:#28C840}.sd-badge.web .sd-dot{background:var(--coral)}
        .sd-hero h1{font-size:2.75rem;font-weight:800;color:var(--navy-dark);line-height:1.15;margin-bottom:1rem}
        .sd-hero .sd-sub{font-size:1.2rem;color:var(--gray-500);line-height:1.7;max-width:700px;margin-bottom:2rem}
        .sd-btn{display:inline-flex;align-items:center;gap:.6rem;padding:1rem 2rem;background:var(--gradient-primary);color:#fff;border-radius:100px;font-weight:700;font-size:1rem;transition:all .3s;text-decoration:none}
        .sd-btn:hover{transform:translateY(-3px);box-shadow:0 12px 30px rgba(255,107,74,.35)}
        .sd-content{max-width:1200px;margin:0 auto;padding:0 2rem 4rem;display:grid;grid-template-columns:2fr 1fr;gap:3rem}
        .sd-main h2{font-size:1.5rem;font-weight:800;color:var(--navy-dark);margin-bottom:1rem}
        .sd-main p{font-size:1.0625rem;color:var(--gray-500);line-height:1.85;margin-bottom:1.25rem}
        .sd-features{list-style:none;padding:0;margin:1.5rem 0 2rem}
        .sd-features li{padding:.65rem 0;color:var(--gray-500);font-size:1rem;display:flex;align-items:flex-start;gap:.75rem;line-height:1.6}
        .sd-features li svg{color:var(--coral);flex-shrink:0;margin-top:4px}
        .sd-sidebar{display:flex;flex-direction:column;gap:1.5rem}
        .sd-card{background:#fff;border-radius:20px;padding:1.75rem;border:1px solid rgba(0,0,0,.05);box-shadow:0 4px 20px rgba(0,0,0,.03)}
        .sd-card h3{font-size:.8rem;text-transform:uppercase;letter-spacing:.08em;color:var(--gray-400);font-weight:700;margin-bottom:1rem}
        .sd-item{display:flex;justify-content:space-between;padding:.6rem 0;border-bottom:1px solid rgba(0,0,0,.04);font-size:.95rem}
        .sd-item:last-child{border-bottom:none}.sd-item .label{color:var(--gray-400)}.sd-item .value{color:var(--navy-dark);font-weight:600}
        .sd-tags{display:flex;flex-wrap:wrap;gap:.5rem}.sd-tags span{padding:.35rem .85rem;background:var(--gray-50);border-radius:8px;font-size:.85rem;color:var(--gray-500);font-weight:500}
        .sd-cta{max-width:1200px;margin:0 auto 4rem;padding:0 2rem}
        .sd-cta-card{background:linear-gradient(135deg,#1a1a2e,#16213e);border-radius:24px;padding:3rem;display:flex;justify-content:space-between;align-items:center;gap:2rem;flex-wrap:wrap}
        .sd-cta-card h2{color:#fff;font-size:1.75rem;font-weight:800;margin-bottom:.5rem}.sd-cta-card p{color:rgba(255,255,255,.65);font-size:1rem}
        @media(max-width:768px){.sd-hero h1{font-size:2rem}.sd-content{grid-template-columns:1fr}.sd-cta-card{flex-direction:column;text-align:center}}
    </style>
</head>
<body>
    <nav class="navbar">
        <a href="../home.html" class="nav-logo"><img src="../../assets/images/logo.png" alt="Site2Success" style="height:48px;width:auto;border-radius:0"></a>
        <div class="nav-links">
            <a href="../home.html" class="nav-item">Home</a>
            <a href="../services.html" class="nav-item active">Services</a>
            <a href="../automation.html" class="nav-item">AI &amp; Automation</a>
            <a href="../internships.html" class="nav-item">Internships</a>
            <a href="../projects.html" class="nav-item">Projects</a>
            <a href="../about.html" class="nav-item">About</a>
            <a href="../contact.html" class="nav-item">Contact</a>
        </div>
        <div class="menu-toggle"><span></span><span></span><span></span></div>
    </nav>

    <div class="sd-hero">
        <div class="sd-breadcrumb">
            <a href="../home.html">Home</a>$chevSvg<a href="../services.html">Services</a>$chevSvg<span style="color:var(--navy-dark);font-weight:600">$($s.title)</span>
        </div>
        <div class="sd-badge $catClass"><div class="sd-dot"></div>$($s.catLabel)</div>
        <h1>$($s.title)</h1>
        <p class="sd-sub">$($s.subtitle)</p>
        <a href="../contact.html" class="sd-btn">Get Started <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg></a>
    </div>

    <section class="sd-content">
        <div class="sd-main">
            <h2>Overview</h2>
            <p>$($s.overview)</p>
            <h2 style="margin-top:2rem">What You Get</h2>
            <ul class="sd-features">
$featuresHtml            </ul>
        </div>
        <div class="sd-sidebar">
            <div class="sd-card">
                <h3>Service Details</h3>
                <div class="sd-item"><span class="label">Category</span><span class="value">$($s.catLabel)</span></div>
                <div class="sd-item"><span class="label">Type</span><span class="value">$($s.type)</span></div>
                <div class="sd-item"><span class="label">Delivery</span><span class="value">$($s.delivery)</span></div>
            </div>
            <div class="sd-card">
                <h3>Best For</h3>
                <div class="sd-tags">
$useCasesHtml                </div>
            </div>
        </div>
    </section>

    <section class="sd-cta">
        <div class="sd-cta-card">
            <div><h2>Ready to Get Started?</h2><p>Let's discuss how this service can transform your business.</p></div>
            <a href="../contact.html" class="sd-btn">Contact Us <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg></a>
        </div>
    </section>

    <script src="../../assets/js/main.js"></script>
</body>
</html>
"@
    $filePath = "c:\Users\Dhanu\Downloads\Site2Sucess_WEBSITE\website\website\pages\services\$($s.id).html"
    $html | Out-File -FilePath $filePath -Encoding utf8
    Write-Host "Created: $($s.id).html"
}
Write-Host "Done! All 14 service pages created."
