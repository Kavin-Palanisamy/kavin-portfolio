$css = Get-Content -Raw -Path 'c:\Users\kavin\Documents\portfolio\styles.css'
$b64 = Get-Content -Raw -Path 'c:\Users\kavin\Documents\portfolio\b64_assets.js'
$js = Get-Content -Raw -Path 'c:\Users\kavin\Documents\portfolio\script.js'

$html = @"
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=yes" />
  <title>KAVIN P — Electrical & Electronics Engineer | IoT, Embedded Systems & PCB Portfolio</title>
  <meta name="description" content="Portfolio of Kavin P — Electrical & Electronics Engineering Student specializing in IoT, Embedded Systems, Electronics, Custom KiCad PCB Design, and Industrial Automation." />
  
  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;600;700;800;900&family=Fira+Code:wght@400;500;600&family=Outfit:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
  
  <style>
$css
  </style>
</head>
<body>

  <!-- Scroll Progress Indicator -->
  <div class="scroll-progress" id="scrollProgress"></div>

  <!-- Interactive Canvas Circuit Background -->
  <canvas id="circuitCanvas"></canvas>

  <!-- Mobile Drawer Backdrop -->
  <div class="mobile-nav-backdrop" id="mobileNavBackdrop"></div>

  <!-- Sticky Classic Navbar -->
  <nav class="navbar" id="navbar" role="navigation" aria-label="Main Navigation">
    <div class="nav-container">
      <a href="#hero" class="nav-logo" title="KAVIN P Portfolio Home">
        <div class="logo-monogram">K</div>
        <div class="logo-text">KAVIN P<span>.</span></div>
      </a>

      <ul class="nav-menu" id="navMenu">
        <li><a href="#hero" class="nav-link active">Home</a></li>
        <li><a href="#about" class="nav-link">About & Edu</a></li>
        <li><a href="#skills" class="nav-link">Arsenal</a></li>
        <li><a href="#projects" class="nav-link">Projects</a></li>
        <li><a href="#achievements" class="nav-link">Achievements</a></li>
        <li><a href="#contact" class="nav-link">Contact</a></li>
      </ul>

      <div class="nav-actions">
        <button class="theme-toggle-btn" id="themeToggleBtn" title="Toggle Classic Color Palette">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="5"/><line x1="12" y1="1" x2="12" y2="3"/><line x1="12" y1="21" x2="12" y2="23"/><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"/><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"/><line x1="1" y1="12" x2="3" y2="12"/><line x1="21" y1="12" x2="23" y2="12"/><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"/><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"/></svg>
        </button>

        <button class="btn btn-secondary open-resume-modal" style="padding: 8px 14px; font-size: 0.85rem;">Resume</button>

        <!-- Mobile Hamburger Navigation Button -->
        <button class="mobile-nav-toggle" id="mobileNavToggle" aria-label="Toggle navigation menu">
          <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/></svg>
        </button>
      </div>
    </div>
  </nav>

  <div class="page-wrapper">

    <!-- FULLSCREEN HERO SECTION -->
    <header class="hero-section" id="hero" role="banner">
      <div class="hero-grid">
        <!-- Left Hero Text Card -->
        <div class="hero-card-left">
          <div class="hero-tag">
            <span class="dot"></span>
            Electrical & Electronics Engineering Student
          </div>

          <h1 class="hero-title">KAVIN P</h1>
          <div class="hero-subtitle">Embedded Systems & IoT Specialist</div>

          <div class="typing-container">
            <span class="typing-prefix">&gt;</span>
            <span class="typing-text" id="typingText"></span>
            <span class="typing-cursor"></span>
          </div>

          <p class="hero-description">
            I am an Electrical and Electronics Engineering student with a strong interest in IoT, Embedded Systems, Electronics, PCB Design, and Industrial Automation. I enjoy combining hardware and software to create practical real-world solutions and continuously improving my technical skills.
          </p>

          <div class="hero-actions">
            <a href="#projects" class="btn btn-primary">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg>
              Explore Projects
            </a>
            <button class="btn btn-secondary open-resume-modal">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
              View Full Resume
            </button>
          </div>

          <!-- Social & Direct Contact Links -->
          <div class="social-bar">
            <a href="mailto:kavin020407@gmail.com" class="social-icon-btn" title="Email Kavin">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
            </a>
            <a href="tel:+916369432107" class="social-icon-btn" title="Call +91 6369432107">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
            </a>
            <a href="https://www.linkedin.com/in/kavinp0204" target="_blank" rel="noopener" class="social-icon-btn" title="LinkedIn Profile">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M16 8a6 6 0 0 1 6 6v6h-4v-6a2 2 0 0 0-2-2 2 2 0 0 0-2 2v6h-4v-12h4v2"/><rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/></svg>
            </a>
            <a href="https://github.com/Kavin-Palanisamy" target="_blank" rel="noopener" class="social-icon-btn" title="GitHub Profile">
              <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 2a10 10 0 0 0-3.16 19.49c.5.09.68-.22.68-.48v-1.7c-2.78.6-3.37-1.34-3.37-1.34-.45-1.16-1.1-1.47-1.1-1.47-.9-.62.07-.61.07-.61 1 .07 1.53 1.03 1.53 1.03.89 1.52 2.34 1.08 2.91.83.09-.65.35-1.08.64-1.33-2.22-.25-4.56-1.11-4.56-4.95 0-1.09.39-1.98 1.03-2.68-.1-.25-.45-1.27.1-2.64 0 0 .84-.27 2.75 1.02a9.56 9.56 0 0 1 5 0c1.9-1.29 2.74-1.02 2.74-1.02.55 1.37.2 2.39.1 2.64.64.7 1.03 1.59 1.03 2.68 0 3.85-2.34 4.7-4.57 4.95.36.31.68.92.68 1.86v2.76c0 .27.18.58.69.48A10 10 0 0 0 12 2z"/></svg>
            </a>
          </div>
        </div>

        <!-- Right Hero Avatar PERFECT ROUND Profile Image -->
        <div class="hero-card-right">
          <div class="avatar-gold-frame" id="avatarFrame" title="Kavin P Profile Photo">
            <div class="avatar-inner">
              <img id="heroAvatarImg" src="assets/profile/profile.jpg" alt="Kavin P Profile Photo Round">
            </div>
          </div>

          <div class="resume-mini-card">
            <div class="resume-mini-info">
              <div class="resume-badge-icon">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
              </div>
              <div class="resume-mini-text">
                <h4>Kavin_P_Resume.pdf</h4>
                <p>Embedded & IoT Candidate</p>
              </div>
            </div>
            <button class="btn btn-outline open-resume-modal" style="padding: 6px 12px; font-size: 0.8rem;">Preview</button>
          </div>
        </div>
      </div>
    </header>

    <!-- KEY STATS COUNTER -->
    <section class="stats-section">
      <div class="stats-grid">
        <div class="stat-card">
          <div class="stat-number">7.6</div>
          <div class="stat-label">B.E. EEE CGPA</div>
        </div>
        <div class="stat-card">
          <div class="stat-number">10+</div>
          <div class="stat-label">Certifications</div>
        </div>
        <div class="stat-card">
          <div class="stat-number">15+</div>
          <div class="stat-label">PCB & IoT Projects</div>
        </div>
        <div class="stat-card">
          <div class="stat-number">100%</div>
          <div class="stat-label">Engineering Focus</div>
        </div>
      </div>
    </section>

    <!-- ABOUT & EDUCATION SECTION -->
    <section class="section" id="about">
      <div class="section-header">
        <h2 class="section-title">ABOUT & <span>EDUCATION</span></h2>
        <div class="section-subtitle">Academic Credentials & Background</div>
      </div>

      <div class="about-card">
        <div class="about-tabs-nav">
          <button class="tab-btn active" onclick="switchTab(event, 'tab-overview')">Overview & Philosophy</button>
          <button class="tab-btn" onclick="switchTab(event, 'tab-education')">Education</button>
        </div>

        <!-- Tab 1: Overview -->
        <div id="tab-overview" class="about-tab-content active">
          <div class="about-grid">
            <div>
              <p>I am an Electrical and Electronics Engineering student with a strong interest in IoT, Embedded Systems, Electronics, PCB Design, and Industrial Automation. I enjoy combining hardware and software to create practical real-world solutions and continuously improving my technical skills.</p>
              <p style="margin-top: 12px; color: var(--text-muted); font-size: 0.95rem;">My hands-on work includes ESP32 and ESP8266 based IoT systems, GPS tracking, Firebase integration, sensor interfacing, electronics circuits, and PCB development using KiCad.</p>
            </div>
            <div class="about-highlight-box">
              <h4>Direct Contact Details</h4>
              <p style="font-size: 0.9rem; color: var(--text-main); margin-bottom: 6px;">📍 Dindigul, Tamil Nadu, India</p>
              <p style="font-size: 0.9rem; color: var(--text-main); margin-bottom: 6px;">📞 +91 6369432107</p>
              <p style="font-size: 0.9rem; color: var(--accent-gold); margin-bottom: 6px;">✉️ kavin020407@gmail.com</p>
            </div>
          </div>
        </div>

        <!-- Tab 2: Education -->
        <div id="tab-education" class="about-tab-content">
          <div style="display: flex; flex-direction: column; gap: 16px;">
            <div style="background: rgba(0,0,0,0.35); padding: 16px; border-radius: var(--radius-md); border-left: 3px solid var(--accent-gold);">
              <h4 style="font-family: var(--font-serif); color: #fff; font-size: 1.1rem;">B.E. Electrical and Electronics Engineering (EEE)</h4>
              <p style="color: var(--accent-gold); font-size: 0.9rem;">KSR College of Engineering, Namakkal (Expected 2026)</p>
              <p style="color: var(--text-muted); font-size: 0.9rem; margin-top: 4px;"><strong>Academic Performance: CGPA 7.6 / 10</strong></p>
            </div>

            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 16px;">
              <div style="background: rgba(0,0,0,0.35); padding: 14px; border-radius: var(--radius-md); border: 1px solid rgba(255,255,255,0.06);">
                <h5 style="color: #fff; font-size: 0.95rem;">Higher Secondary Certificate (12th)</h5>
                <p style="color: var(--accent-gold-light); font-size: 0.88rem; margin-top: 4px;">Score: 440 / 600</p>
              </div>
              <div style="background: rgba(0,0,0,0.35); padding: 14px; border-radius: var(--radius-md); border: 1px solid rgba(255,255,255,0.06);">
                <h5 style="color: #fff; font-size: 0.95rem;">Secondary School Leaving Certificate (10th)</h5>
                <p style="color: var(--accent-gold-light); font-size: 0.88rem; margin-top: 4px;">Score: 389 / 500</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- TECHNICAL ARSENAL SECTION -->
    <section class="section" id="skills">
      <div class="section-header">
        <h2 class="section-title">TECHNICAL <span>ARSENAL</span></h2>
        <div class="section-subtitle">Core Skills & Engineering Competencies</div>
      </div>

      <div class="filter-bar">
        <button class="filter-btn skill-filter-btn active" data-filter="all">All Domains</button>
        <button class="filter-btn skill-filter-btn" data-filter="embedded">Embedded Systems</button>
        <button class="filter-btn skill-filter-btn" data-filter="programming">Programming</button>
        <button class="filter-btn skill-filter-btn" data-filter="iot">IoT</button>
        <button class="filter-btn skill-filter-btn" data-filter="electronics">Electronics</button>
        <button class="filter-btn skill-filter-btn" data-filter="pcb">PCB Design</button>
        <button class="filter-btn skill-filter-btn" data-filter="tools">Tools</button>
      </div>

      <div class="tech-grid">
        <!-- 1. Embedded Systems -->
        <div class="tech-category-card" data-category="embedded">
          <h3>
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="4" y="4" width="16" height="16" rx="2"/><rect x="9" y="9" width="6" height="6"/><line x1="9" y1="1" x2="9" y2="4"/><line x1="15" y1="1" x2="15" y2="4"/><line x1="9" y1="20" x2="9" y2="23"/><line x1="15" y1="20" x2="15" y2="23"/><line x1="20" y1="9" x2="23" y2="9"/><line x1="20" y1="15" x2="23" y2="15"/><line x1="1" y1="9" x2="4" y2="9"/><line x1="1" y1="15" x2="4" y2="15"/></svg>
            EMBEDDED SYSTEMS
          </h3>
          <div class="skill-chips">
            <span class="skill-chip"><span class="level-dot"></span>ESP32</span>
            <span class="skill-chip"><span class="level-dot"></span>ESP8266</span>
            <span class="skill-chip"><span class="level-dot"></span>Arduino</span>
            <span class="skill-chip"><span class="level-dot"></span>STM32</span>
            <span class="skill-chip"><span class="level-dot"></span>Microcontrollers</span>
            <span class="skill-chip"><span class="level-dot"></span>GPIO</span>
            <span class="skill-chip"><span class="level-dot"></span>UART</span>
            <span class="skill-chip"><span class="level-dot"></span>I2C</span>
            <span class="skill-chip"><span class="level-dot"></span>SPI</span>
            <span class="skill-chip"><span class="level-dot"></span>Sensors</span>
            <span class="skill-chip"><span class="level-dot"></span>Actuators</span>
          </div>
        </div>

        <!-- 2. Programming -->
        <div class="tech-category-card" data-category="programming">
          <h3>
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/></svg>
            PROGRAMMING
          </h3>
          <div class="skill-chips">
            <span class="skill-chip"><span class="level-dot"></span>C</span>
            <span class="skill-chip"><span class="level-dot"></span>Python</span>
            <span class="skill-chip"><span class="level-dot"></span>Java</span>
            <span class="skill-chip"><span class="level-dot"></span>JavaScript</span>
          </div>
        </div>

        <!-- 3. IoT -->
        <div class="tech-category-card" data-category="iot">
          <h3>
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M18 10h-1.26A8 8 0 1 0 9 20h9a5 5 0 0 0 0-10z"/></svg>
            IoT
          </h3>
          <div class="skill-chips">
            <span class="skill-chip"><span class="level-dot"></span>Firebase</span>
            <span class="skill-chip"><span class="level-dot"></span>Wi-Fi</span>
            <span class="skill-chip"><span class="level-dot"></span>GSM</span>
            <span class="skill-chip"><span class="level-dot"></span>GPS</span>
            <span class="skill-chip"><span class="level-dot"></span>Real-Time Monitoring</span>
            <span class="skill-chip"><span class="level-dot"></span>Cloud Connectivity</span>
          </div>
        </div>

        <!-- 4. Electronics -->
        <div class="tech-category-card" data-category="electronics">
          <h3>
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/></svg>
            ELECTRONICS
          </h3>
          <div class="skill-chips">
            <span class="skill-chip"><span class="level-dot"></span>Digital Electronics</span>
            <span class="skill-chip"><span class="level-dot"></span>Analog Electronics</span>
            <span class="skill-chip"><span class="level-dot"></span>Sensors</span>
            <span class="skill-chip"><span class="level-dot"></span>Relays</span>
            <span class="skill-chip"><span class="level-dot"></span>Transistors</span>
            <span class="skill-chip"><span class="level-dot"></span>Microcontroller Interfacing</span>
          </div>
        </div>

        <!-- 5. PCB Design -->
        <div class="tech-category-card" data-category="pcb">
          <h3>
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polygon points="12 2 2 7 12 12 22 7 12 2"/><polyline points="2 17 12 22 22 17"/><polyline points="2 12 12 17 22 12"/></svg>
            PCB DESIGN
          </h3>
          <div class="skill-chips">
            <span class="skill-chip"><span class="level-dot"></span>KiCad</span>
            <span class="skill-chip"><span class="level-dot"></span>Schematic Design</span>
            <span class="skill-chip"><span class="level-dot"></span>PCB Layout</span>
            <span class="skill-chip"><span class="level-dot"></span>Routing</span>
            <span class="skill-chip"><span class="level-dot"></span>Grounding</span>
            <span class="skill-chip"><span class="level-dot"></span>Gerber</span>
            <span class="skill-chip"><span class="level-dot"></span>3D PCB Visualization</span>
          </div>
        </div>

        <!-- 6. Tools -->
        <div class="tech-category-card" data-category="tools">
          <h3>
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg>
            TOOLS
          </h3>
          <div class="skill-chips">
            <span class="skill-chip"><span class="level-dot"></span>Arduino IDE</span>
            <span class="skill-chip"><span class="level-dot"></span>VS Code</span>
            <span class="skill-chip"><span class="level-dot"></span>Git</span>
            <span class="skill-chip"><span class="level-dot"></span>GitHub</span>
            <span class="skill-chip"><span class="level-dot"></span>KiCad</span>
          </div>
        </div>
      </div>
    </section>

    <!-- PROJECTS SECTION -->
    <section class="section" id="projects">
      <div class="section-header">
        <h2 class="section-title">FEATURED <span>PROJECTS</span></h2>
        <div class="section-subtitle">Real-World Hardware & Software Solutions</div>
      </div>

      <div class="projects-grid">
        <!-- Project 1: Virtual Fencing IoT System -->
        <article class="project-card" data-category="iot">
          <div class="project-media-wrap">
            <span class="project-category-badge">IoT & GPS Geofencing</span>
            <img id="imgProject1" src="assets/projects/project1.png" alt="Virtual Fencing IoT System Satellite Dashboard">
          </div>
          <div class="project-content">
            <h3 class="project-title">Virtual Fencing IoT System</h3>
            <p class="project-desc">Real-time livestock geofencing system using ESP32-WROOM-32, NEO-6M GPS, and ray-casting polygon boundary detection. Integrated with Firebase Realtime DB, web dashboard, buzzer/motor alerts, and Capacitor Android app.</p>
            <div class="project-tech-tags">
              <span class="tech-tag">ESP32</span>
              <span class="tech-tag">NEO-6M GPS</span>
              <span class="tech-tag">Ray-Casting Algorithm</span>
              <span class="tech-tag">Firebase DB</span>
              <span class="tech-tag">Capacitor Android</span>
            </div>
            <div class="project-actions">
              <button class="btn btn-primary open-project-modal" data-id="1" style="width:100%">View Architecture & Specs</button>
            </div>
          </div>
        </article>

        <!-- Project 2: JARVIS AI -->
        <article class="project-card" data-category="ai">
          <div class="project-media-wrap">
            <span class="project-category-badge">AI & Voice Control</span>
            <img id="imgJarvis" src="assets/projects/jarvis-ai.png" alt="JARVIS AI Voice Assistant Interface">
          </div>
          <div class="project-content">
            <h3 class="project-title">JARVIS AI — Embedded Assistant</h3>
            <p class="project-desc">Modular autonomous AI assistant powered by the Gemini 2.5 Pro API with Python architecture. Extended to interface with embedded hardware microcontrollers for voice-driven automation.</p>
            <div class="project-tech-tags">
              <span class="tech-tag">Gemini 2.5 Pro API</span>
              <span class="tech-tag">Python Architecture</span>
              <span class="tech-tag">Voice Pipelines</span>
              <span class="tech-tag">Embedded Bridge</span>
            </div>
            <div class="project-actions">
              <button class="btn btn-primary open-project-modal" data-id="2" style="width:100%">View Architecture & Specs</button>
            </div>
          </div>
        </article>

        <!-- Project 3: Custom KiCad ESP32 PCB -->
        <article class="project-card" data-category="pcb">
          <div class="project-media-wrap">
            <span class="project-category-badge">KiCad Hardware PCB</span>
            <img id="imgPcb" src="assets/projects/pcb-design.png" alt="Custom KiCad ESP32 PCB Layout Renders">
          </div>
          <div class="project-content">
            <h3 class="project-title">Custom KiCad ESP32 PCB Layout</h3>
            <p class="project-desc">Double-layer PCB designed in KiCad 7.0 for ESP32 microcontroller gateways, surface mount components, ground copper pour isolation, and voltage regulation circuit routing.</p>
            <div class="project-tech-tags">
              <span class="tech-tag">KiCad 7.0</span>
              <span class="tech-tag">2-Layer PCB</span>
              <span class="tech-tag">SMD Packaging</span>
              <span class="tech-tag">3D Gerber Export</span>
            </div>
            <div class="project-actions">
              <button class="btn btn-primary open-project-modal" data-id="4" style="width:100%">View Architecture & Specs</button>
            </div>
          </div>
        </article>

        <!-- Project 4: Theft Detection System -->
        <article class="project-card" data-category="ai">
          <div class="project-media-wrap">
            <span class="project-category-badge">Computer Vision</span>
            <img id="imgTheft" src="assets/projects/theft-detection.png" alt="Intelligent Theft Detection System Preview">
          </div>
          <div class="project-content">
            <h3 class="project-title">Intelligent Theft Detection System</h3>
            <p class="project-desc">Real-time computer vision security system identifying abnormal motion intrusion in restricted zones and triggering automated alert notifications.</p>
            <div class="project-tech-tags">
              <span class="tech-tag">OpenCV</span>
              <span class="tech-tag">Python</span>
              <span class="tech-tag">Motion Tracking</span>
            </div>
            <div class="project-actions">
              <button class="btn btn-primary open-project-modal" data-id="3" style="width:100%">View Architecture & Specs</button>
            </div>
          </div>
        </article>
      </div>
    </section>

    <!-- ACHIEVEMENTS & CERTIFICATIONS SECTION -->
    <section class="section" id="achievements">
      <div class="section-header">
        <h2 class="section-title">CERTIFICATIONS & <span>ACHIEVEMENTS</span></h2>
        <div class="section-subtitle">Verified Industrial & Academic Accomplishments</div>
      </div>

      <div class="achievements-grid">
        <!-- Certificate 1: NxtGen Instruments -->
        <div class="ach-card" id="cardAch1" data-src="assets/achievements/achievement-1.png">
          <div class="ach-img-wrap">
            <img id="imgAch1" src="assets/achievements/achievement-1.png" alt="Industrial Automation Internship Certificate - NxtGen Instruments">
            <div class="ach-overlay-icon">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/><line x1="11" y1="8" x2="11" y2="14"/><line x1="8" y1="11" x2="14" y2="11"/></svg>
            </div>
          </div>
          <div class="ach-info">
            <h4>Embedded Systems Internship</h4>
            <p>NxtGen Instruments • Industrial Automation (15 Days)</p>
          </div>
        </div>

        <!-- Certificate 2: GDG Solution Challenge -->
        <div class="ach-card" id="cardAch2" data-src="assets/achievements/achievement-2.png">
          <div class="ach-img-wrap">
            <img id="imgAch2" src="assets/achievements/achievement-2.png" alt="GDG Solution Challenge Certificate of Participation">
            <div class="ach-overlay-icon">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/><line x1="11" y1="8" x2="11" y2="14"/><line x1="8" y1="11" x2="14" y2="11"/></svg>
            </div>
          </div>
          <div class="ach-info">
            <h4>GDG Solution Challenge</h4>
            <p>Google Developer Groups On Campus</p>
          </div>
        </div>
      </div>

      <div style="margin-top: 24px; background: var(--panel-bg); border: 1px solid var(--panel-border); border-radius: var(--radius-md); padding: 20px; text-align: center;">
        <h4 style="font-family: var(--font-serif); color: var(--accent-gold-light); font-size: 1.1rem; margin-bottom: 6px;">NPTEL Certification — Introduction to IoT</h4>
        <p style="color: var(--text-muted); font-size: 0.9rem;">Plus 10+ additional technical certifications in Embedded Systems, IoT, and Programming (available on request / LinkedIn).</p>
      </div>
    </section>

    <!-- CONTACT SECTION -->
    <section class="section" id="contact">
      <div class="contact-card">
        <div class="contact-left">
          <h2>LET'S CONNECT</h2>
          <p>Interested in collaborating on IoT products, KiCad PCB hardware designs, or engineering roles? Feel free to send a message or contact directly.</p>

          <div class="contact-info-list">
            <div class="contact-info-item">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
              <div>
                <div class="label">Email Address</div>
                <div class="val">kavin020407@gmail.com</div>
              </div>
              <button class="btn btn-outline" id="copyEmailBtn" data-email="kavin020407@gmail.com" style="margin-left:auto; padding:4px 10px; font-size:0.75rem;">Copy</button>
            </div>

            <div class="contact-info-item">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
              <div>
                <div class="label">Phone Number</div>
                <div class="val">+91 6369432107</div>
              </div>
              <a href="tel:+916369432107" class="btn btn-outline" style="margin-left:auto; padding:4px 10px; font-size:0.75rem;">Call</a>
            </div>

            <div class="contact-info-item">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"/><circle cx="12" cy="10" r="3"/></svg>
              <div>
                <div class="label">Location</div>
                <div class="val">Dindigul, Tamil Nadu</div>
              </div>
            </div>

            <div class="contact-info-item">
              <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 2a10 10 0 0 0-3.16 19.49c.5.09.68-.22.68-.48v-1.7c-2.78.6-3.37-1.34-3.37-1.34-.45-1.16-1.1-1.47-1.1-1.47-.9-.62.07-.61.07-.61 1 .07 1.53 1.03 1.53 1.03.89 1.52 2.34 1.08 2.91.83.09-.65.35-1.08.64-1.33-2.22-.25-4.56-1.11-4.56-4.95 0-1.09.39-1.98 1.03-2.68-.1-.25-.45-1.27.1-2.64 0 0 .84-.27 2.75 1.02a9.56 9.56 0 0 1 5 0c1.9-1.29 2.74-1.02 2.74-1.02.55 1.37.2 2.39.1 2.64.64.7 1.03 1.59 1.03 2.68 0 3.85-2.34 4.7-4.57 4.95.36.31.68.92.68 1.86v2.76c0 .27.18.58.69.48A10 10 0 0 0 12 2z"/></svg>
              <div>
                <div class="label">GitHub</div>
                <div class="val">Kavin-Palanisamy</div>
              </div>
              <a href="https://github.com/Kavin-Palanisamy" target="_blank" rel="noopener" class="btn btn-outline" style="margin-left:auto; padding:4px 10px; font-size:0.75rem;">Visit</a>
            </div>
          </div>
        </div>

        <form class="contact-form" id="contactForm">
          <div class="form-group">
            <label for="contactName">Your Name</label>
            <input type="text" id="contactName" class="form-input" placeholder="e.g. Alexander Graham" required>
          </div>
          <div class="form-group">
            <label for="contactEmail">Your Email</label>
            <input type="email" id="contactEmail" class="form-input" placeholder="e.g. alex@example.com" required>
          </div>
          <div class="form-group">
            <label for="contactMessage">Message</label>
            <textarea id="contactMessage" class="form-textarea" placeholder="Discuss embedded engineering opportunities or firmware projects..." required></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Send Message</button>
        </form>
      </div>
    </section>

    <!-- FOOTER -->
    <footer class="footer" role="contentinfo">
      <div class="footer-inner">
        <div>
          <div class="footer-brand">KAVIN P<span>.</span></div>
          <div style="font-size: 0.85rem; color: var(--text-dim);">Electrical & Electronics Engineering Student • Dindigul, Tamil Nadu</div>
        </div>

        <div style="font-size:0.85rem;">
          © 2026 Kavin P. All Rights Reserved.
        </div>

        <button class="back-to-top-btn" onclick="window.scrollTo({top:0, behavior:'smooth'})" title="Back to top">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="18 15 12 9 6 15"/></svg>
        </button>
      </div>
    </footer>

  </div>

  <!-- PROJECT DEEP DIVE MODAL -->
  <div class="modal" id="projectModal" role="dialog" aria-modal="true">
    <div class="modal-container">
      <button class="modal-close-btn" id="closeProjectModal">&times;</button>
      <div style="color: var(--accent-gold); font-size: 0.85rem; font-family: var(--font-mono);" id="modalProjCategory">Category</div>
      <h2 style="font-family: var(--font-serif); color: #fff; font-size: 1.6rem; margin-bottom: 14px;" id="modalProjTitle">Project Title</h2>
      <div style="height: 220px; border-radius: var(--radius-md); overflow: hidden; margin-bottom: 18px; border: 1px solid var(--panel-border); background:#05070a;">
        <img id="modalProjImg" src="" alt="Project modal detail preview" style="width: 100%; height: 100%; object-fit: contain;">
      </div>
      <h3 style="font-family: var(--font-serif); color: var(--accent-gold-light); font-size: 1.05rem; margin-bottom: 6px;">System Architecture & Overview</h3>
      <p style="color: var(--text-muted); line-height: 1.6; font-size:0.95rem; margin-bottom: 18px;" id="modalProjDetails">Project details.</p>
      
      <h3 style="font-family: var(--font-serif); color: var(--accent-gold-light); font-size: 1.05rem; margin-bottom: 6px;">Technical Specifications</h3>
      <ul style="color: var(--text-main); margin-left: 18px; line-height: 1.7; font-size:0.9rem; margin-bottom: 22px;" id="modalProjSpecs"></ul>
      
      <div style="display: flex; gap: 14px;">
        <a id="modalProjGithub" href="https://github.com/Kavin-Palanisamy" target="_blank" rel="noopener" class="btn btn-primary">View GitHub Repository</a>
      </div>
    </div>
  </div>

  <!-- RESUME MODAL -->
  <div class="modal" id="resumeModal" role="dialog" aria-modal="true">
    <div class="modal-container" style="max-width: 820px;">
      <button class="modal-close-btn" id="closeResumeModal">&times;</button>
      <div style="border-bottom: 1px solid var(--panel-border); padding-bottom: 14px; margin-bottom: 18px; display: flex; justify-content: space-between; align-items: flex-start; flex-wrap:wrap; gap:10px;">
        <div>
          <h2 style="font-family: var(--font-serif); color: #fff; font-size: 1.7rem;">KAVIN P</h2>
          <p style="color: var(--accent-gold); font-size: 0.9rem; font-weight:600;">Dindigul, Tamil Nadu | +91 6369432107 | kavin020407@gmail.com</p>
          <p style="color: var(--text-dim); font-size: 0.82rem; margin-top:4px;">
            <a href="https://www.linkedin.com/in/kavinp0204" target="_blank" style="color:var(--accent-gold); text-decoration:none; margin-right:12px;">LinkedIn: kavinp0204</a>
            <a href="https://github.com/Kavin-Palanisamy" target="_blank" style="color:var(--accent-gold); text-decoration:none;">GitHub: Kavin-Palanisamy</a>
          </p>
        </div>
        <button class="btn btn-primary" onclick="window.print()" style="padding: 8px 14px; font-size: 0.82rem;">Print / Download PDF</button>
      </div>
      
      <div style="line-height: 1.6; color: var(--text-main); font-size: 0.92rem;">
        <h3 style="font-family: var(--font-serif); color: var(--accent-gold-light); border-bottom: 1px solid rgba(255,255,255,0.1); padding-bottom: 4px; margin-bottom: 8px;">CAREER OBJECTIVE</h3>
        <p style="color: var(--text-muted); margin-bottom: 16px;">
          Pre-year Electrical and Electronics Engineering student specializing in Embedded Systems and IoT, with hands-on experience designing, coding, and deploying ESP32/ESP8266-based real-time systems integrated with cloud databases, GPS, and sensor networks. Seeking an Embedded Systems / IoT Engineer role to apply firmware development, sensor integration, and edge connectivity skills to production-grade solutions.
        </p>

        <h3 style="font-family: var(--font-serif); color: var(--accent-gold-light); border-bottom: 1px solid rgba(255,255,255,0.1); padding-bottom: 4px; margin-bottom: 8px;">EDUCATION</h3>
        <p style="color: var(--text-muted); margin-bottom: 4px;"><strong>B.E., Electrical and Electronics Engineering</strong> (Expected 2026)</p>
        <p style="color: var(--accent-gold); font-size: 0.88rem; margin-bottom: 8px;">KSR College of Engineering, Namakkal — <strong>CGPA: 7.6 / 10</strong></p>
        <p style="color: var(--text-muted); font-size:0.88rem; margin-bottom: 4px;">Higher Secondary Certificate (12th) — Score: 440 / 600</p>
        <p style="color: var(--text-muted); font-size:0.88rem; margin-bottom: 16px;">Secondary School Leaving Certificate (10th) — Score: 389 / 500</p>

        <h3 style="font-family: var(--font-serif); color: var(--accent-gold-light); border-bottom: 1px solid rgba(255,255,255,0.1); padding-bottom: 4px; margin-bottom: 8px;">TECHNICAL SKILLS</h3>
        <p style="color: var(--text-muted); margin-bottom: 16px;">
          • <strong>Embedded Systems:</strong> ESP32, ESP8266, Arduino, STM32, Microcontrollers, GPIO, UART, I2C, SPI, Sensors, Actuators<br>
          • <strong>Programming:</strong> C, Python, Java, JavaScript<br>
          • <strong>IoT:</strong> Firebase, Wi-Fi, GSM, GPS, Real-Time Monitoring, Cloud Connectivity<br>
          • <strong>Electronics:</strong> Digital Electronics, Analog Electronics, Sensors, Relays, Transistors, Microcontroller Interfacing<br>
          • <strong>PCB Design:</strong> KiCad, Schematic Design, PCB Layout, Routing, Grounding, Gerber, 3D PCB Visualization<br>
          • <strong>Tools:</strong> Arduino IDE, VS Code, Git, GitHub, KiCad
        </p>

        <h3 style="font-family: var(--font-serif); color: var(--accent-gold-light); border-bottom: 1px solid rgba(255,255,255,0.1); padding-bottom: 4px; margin-bottom: 8px;">PROJECTS</h3>
        <p style="color: #fff; font-weight:600; margin-bottom: 2px;">Virtual Fencing IoT System</p>
        <ul style="color: var(--text-muted); margin-left: 18px; font-size:0.88rem; margin-bottom: 10px;">
          <li>Designed a real-time livestock/asset geofencing system using ESP32-WROOM-32 and NEO-6M GPS module, with polygon-based boundary detection using ray-casting algorithm.</li>
          <li>Integrated Firebase Realtime Database for dynamic fence boundary updates and live location tracking; implemented buzzer and motor alerts on boundary breach.</li>
          <li>Deployed a companion web dashboard and converted the system into an Android app using Capacitor.</li>
        </ul>

        <p style="color: #fff; font-weight:600; margin-bottom: 2px;">JARVIS AI — Embedded-Integrated AI Assistant</p>
        <ul style="color: var(--text-muted); margin-left: 18px; font-size:0.88rem; margin-bottom: 16px;">
          <li>Built a modular, autonomous AI assistant powered by the Gemini 2.5 Pro API with a Python-based architecture, extended to interface with embedded hardware for voice-driven control and automation.</li>
          <li>Designed the system for extensibility, enabling integration of new hardware modules and voice command pipelines.</li>
        </ul>

        <h3 style="font-family: var(--font-serif); color: var(--accent-gold-light); border-bottom: 1px solid rgba(255,255,255,0.1); padding-bottom: 4px; margin-bottom: 8px;">CERTIFICATIONS & ACHIEVEMENTS</h3>
        <p style="color: var(--text-muted); margin-bottom: 4px;">• <strong>NPTEL Certification:</strong> Introduction to IoT</p>
        <p style="color: var(--text-muted); margin-bottom: 4px;">• <strong>Project Expo & Paper Presentation (Vels College):</strong> Represented team presenting the Virtual Fencing IoT System to an inter-college technical audience.</p>
        <p style="color: var(--text-muted); margin-bottom: 16px;">• 10+ additional certifications in embedded systems, IoT, and programming (available on request / LinkedIn).</p>
      </div>
    </div>
  </div>

  <!-- LIGHTBOX FOR CERTIFICATES -->
  <div class="modal" id="lightbox" role="dialog" aria-modal="true">
    <div style="position: relative; max-width: 92vw; max-height: 90vh; text-align: center;">
      <button class="modal-close-btn" id="closeLightbox" style="top:-40px; right:0; color:#fff;">&times;</button>
      <img id="lightboxImg" src="" alt="Expanded Certificate View" style="max-width: 100%; max-height: 80vh; border-radius: var(--radius-md); border: 2px solid var(--accent-gold); box-shadow: var(--shadow-lux); object-fit: contain; background: #fff;">
      <div id="lightboxCaption" style="margin-top: 12px; font-family: var(--font-serif); font-size: 1.05rem; color: var(--accent-gold-light);"></div>
    </div>
  </div>

  <!-- TOAST NOTIFICATION -->
  <div class="toast" id="toast">
    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" style="color:var(--accent-gold);"><polyline points="20 6 9 17 4 12"/></svg>
    <span id="toastMsg">Action completed successfully.</span>
  </div>

  <!-- Embedded Base64 Image Assets -->
  <script>
$b64
  </script>

  <!-- Embedded JavaScript Logic & Image Hydration -->
  <script>
$js

  // Hydrate Embedded Base64 Images for Portable Mobile Standalone View
  document.addEventListener('DOMContentLoaded', function() {
    if (typeof B64_PROFILE !== 'undefined') {
      const heroImg = document.getElementById('heroAvatarImg');
      if (heroImg) heroImg.src = B64_PROFILE;
    }
    if (typeof B64_PROJECT1 !== 'undefined') {
      const p1Img = document.getElementById('imgProject1');
      if (p1Img) p1Img.src = B64_PROJECT1;
    }
    if (typeof B64_JARVIS !== 'undefined') {
      const jImg = document.getElementById('imgJarvis');
      if (jImg) jImg.src = B64_JARVIS;
    }
    if (typeof B64_PCB !== 'undefined') {
      const pcbImg = document.getElementById('imgPcb');
      if (pcbImg) pcbImg.src = B64_PCB;
    }
    if (typeof B64_THEFT !== 'undefined') {
      const thImg = document.getElementById('imgTheft');
      if (thImg) thImg.src = B64_THEFT;
    }
    if (typeof B64_ACH1 !== 'undefined') {
      const ach1Img = document.getElementById('imgAch1');
      const card1 = document.getElementById('cardAch1');
      if (ach1Img) ach1Img.src = B64_ACH1;
      if (card1) card1.setAttribute('data-src', B64_ACH1);
    }
    if (typeof B64_ACH2 !== 'undefined') {
      const ach2Img = document.getElementById('imgAch2');
      const card2 = document.getElementById('cardAch2');
      if (ach2Img) ach2Img.src = B64_ACH2;
      if (card2) card2.setAttribute('data-src', B64_ACH2);
    }
  });
  </script>

</body>
</html>
"@

Set-Content -Path 'c:\Users\kavin\Documents\portfolio\index.html' -Value $html
Write-Host "Updated portable index.html created successfully!"
