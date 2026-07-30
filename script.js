/* ==========================================================================
   CLASSIC PORTFOLIO INTERACTIVE CONTROLLER - KAVIN (BRIGHT SCROLL & TAP SPARK)
   ========================================================================== */

document.addEventListener('DOMContentLoaded', () => {
  initCircuitCanvas();
  initTypingEffect();
  initScrollEffects();
  initScrollReveal();
  initBrightParticleBurst();
  initMobileNav();
  initSkillFilters();
  initProjectFilters();
  initProjectModals();
  initResumeModal();
  initLightbox();
  initThemeToggle();
  initContactForm();
});

/* --------------------------------------------------------------------------
   1. Interactive Bright Touch & Cursor Reactive Circuit Background Canvas
   -------------------------------------------------------------------------- */
function initCircuitCanvas() {
  const canvas = document.getElementById('circuitCanvas');
  if (!canvas) return;
  const ctx = canvas.getContext('2d');

  let width = (canvas.width = window.innerWidth);
  let height = (canvas.height = window.innerHeight);

  let touchPos = { x: -1000, y: -1000 };

  function updateTouch(e) {
    if (e.touches && e.touches.length > 0) {
      touchPos.x = e.touches[0].clientX;
      touchPos.y = e.touches[0].clientY;
    } else if (e.clientX !== undefined) {
      touchPos.x = e.clientX;
      touchPos.y = e.clientY;
    }
  }

  window.addEventListener('mousemove', updateTouch);
  window.addEventListener('touchmove', updateTouch, { passive: true });
  window.addEventListener('resize', () => {
    width = canvas.width = window.innerWidth;
    height = canvas.height = window.innerHeight;
  });

  const nodes = [];
  const nodeCount = Math.min(55, Math.floor((width * height) / 20000));

  for (let i = 0; i < nodeCount; i++) {
    nodes.push({
      x: Math.random() * width,
      y: Math.random() * height,
      vx: (Math.random() - 0.5) * 0.55,
      vy: (Math.random() - 0.5) * 0.55,
      radius: Math.random() * 2.5 + 1.5,
    });
  }

  function draw() {
    ctx.clearRect(0, 0, width, height);

    // Connecting lines between nodes
    for (let i = 0; i < nodes.length; i++) {
      for (let j = i + 1; j < nodes.length; j++) {
        const dx = nodes[i].x - nodes[j].x;
        const dy = nodes[i].y - nodes[j].y;
        const dist = Math.sqrt(dx * dx + dy * dy);

        if (dist < 140) {
          ctx.beginPath();
          ctx.moveTo(nodes[i].x, nodes[i].y);
          ctx.lineTo(nodes[j].x, nodes[i].y);
          ctx.lineTo(nodes[j].x, nodes[j].y);
          ctx.strokeStyle = `rgba(255, 215, 0, ${0.18 - dist / 1400})`;
          ctx.lineWidth = 1;
          ctx.stroke();
        }
      }

      // Interaction with touch/cursor position
      const tDx = touchPos.x - nodes[i].x;
      const tDy = touchPos.y - nodes[i].y;
      const tDist = Math.sqrt(tDx * tDx + tDy * tDy);

      if (tDist < 180) {
        ctx.beginPath();
        ctx.moveTo(nodes[i].x, nodes[i].y);
        ctx.lineTo(touchPos.x, touchPos.y);
        ctx.strokeStyle = `rgba(56, 189, 248, ${0.35 - tDist / 1800})`;
        ctx.lineWidth = 1.2;
        ctx.stroke();
      }
    }

    // Draw bright glowing nodes
    nodes.forEach((node) => {
      ctx.beginPath();
      ctx.arc(node.x, node.y, node.radius, 0, Math.PI * 2);
      ctx.fillStyle = 'rgba(255, 215, 0, 0.85)';
      ctx.shadowColor = '#ffd700';
      ctx.shadowBlur = 8;
      ctx.fill();

      node.x += node.vx;
      node.y += node.vy;

      if (node.x < 0 || node.x > width) node.vx *= -1;
      if (node.y < 0 || node.y > height) node.vy *= -1;
    });

    requestAnimationFrame(draw);
  }

  draw();
}

/* --------------------------------------------------------------------------
   2. BRIGHT MULTI-PARTICLE SPARK & SHOCKWAVE BURST (Mobile & Laptop)
   -------------------------------------------------------------------------- */
function initBrightParticleBurst() {
  const colors = ['#ffd700', '#38bdf8', '#fff0a8', '#ffffff', '#e5c158'];

  function triggerBurst(e) {
    const clientX = e.touches ? e.touches[0].clientX : e.clientX;
    const clientY = e.touches ? e.touches[0].clientY : e.clientY;

    if (!clientX || !clientY) return;

    // 1. Create bright shockwave ring
    const ring = document.createElement('div');
    ring.className = 'bright-ring';
    ring.style.left = `${clientX}px`;
    ring.style.top = `${clientY}px`;
    document.body.appendChild(ring);

    // 2. Create 10 bright glowing sparks exploding outward
    for (let i = 0; i < 10; i++) {
      const spark = document.createElement('div');
      spark.className = 'bright-spark';
      spark.style.left = `${clientX}px`;
      spark.style.top = `${clientY}px`;

      const color = colors[Math.floor(Math.random() * colors.length)];
      spark.style.color = color;
      spark.style.backgroundColor = color;

      const angle = (i / 10) * Math.PI * 2 + (Math.random() - 0.5);
      const distance = Math.random() * 60 + 40;
      const tx = Math.cos(angle) * distance;
      const ty = Math.sin(angle) * distance;

      spark.style.setProperty('--tx', `${tx}px`);
      spark.style.setProperty('--ty', `${ty}px`);

      document.body.appendChild(spark);

      setTimeout(() => {
        spark.remove();
      }, 750);
    }

    setTimeout(() => {
      ring.remove();
    }, 650);
  }

  window.addEventListener('click', triggerBurst);
  window.addEventListener('touchstart', triggerBurst, { passive: true });
}

/* --------------------------------------------------------------------------
   3. Typing Effect for Engineering Roles
   -------------------------------------------------------------------------- */
function initTypingEffect() {
  const roles = [
    'Embedded Systems & IoT Engineer',
    'ESP32 / ESP8266 Firmware Developer',
    'Custom KiCad PCB Layout Specialist',
    'Industrial Automation Innovator',
  ];
  const target = document.getElementById('typingText');
  if (!target) return;

  let roleIdx = 0;
  let charIdx = 0;
  let isDeleting = false;

  function type() {
    const currentRole = roles[roleIdx];
    if (isDeleting) {
      target.textContent = currentRole.substring(0, charIdx - 1);
      charIdx--;
    } else {
      target.textContent = currentRole.substring(0, charIdx + 1);
      charIdx++;
    }

    let delay = isDeleting ? 30 : 70;

    if (!isDeleting && charIdx === currentRole.length) {
      delay = 2000;
      isDeleting = true;
    } else if (isDeleting && charIdx === 0) {
      isDeleting = false;
      roleIdx = (roleIdx + 1) % roles.length;
      delay = 350;
    }

    setTimeout(type, delay);
  }

  type();
}

/* --------------------------------------------------------------------------
   4. Mobile Navigation Drawer Controller
   -------------------------------------------------------------------------- */
function initMobileNav() {
  const toggleBtn = document.getElementById('mobileNavToggle');
  const navMenu = document.getElementById('navMenu');
  const backdrop = document.getElementById('mobileNavBackdrop');
  const navLinks = document.querySelectorAll('.nav-link');

  function openMenu() {
    if (navMenu) navMenu.classList.add('mobile-open');
    if (backdrop) backdrop.classList.add('show');
    document.body.style.overflow = 'hidden';
  }

  function closeMenu() {
    if (navMenu) navMenu.classList.remove('mobile-open');
    if (backdrop) backdrop.classList.remove('show');
    document.body.style.overflow = '';
  }

  if (toggleBtn) {
    toggleBtn.addEventListener('click', () => {
      if (navMenu && navMenu.classList.contains('mobile-open')) {
        closeMenu();
      } else {
        openMenu();
      }
    });
  }

  if (backdrop) {
    backdrop.addEventListener('click', closeMenu);
  }

  navLinks.forEach((link) => {
    link.addEventListener('click', closeMenu);
  });
}

/* --------------------------------------------------------------------------
   5. Scroll Progress & Active Nav Indicator
   -------------------------------------------------------------------------- */
function initScrollEffects() {
  const progress = document.getElementById('scrollProgress');
  const navbar = document.getElementById('navbar');
  const sections = document.querySelectorAll('section, header');
  const navLinks = document.querySelectorAll('.nav-link');

  window.addEventListener('scroll', () => {
    const totalHeight = document.documentElement.scrollHeight - window.innerHeight;
    const currentScroll = window.scrollY;
    
    if (progress && totalHeight > 0) {
      progress.style.width = `${(currentScroll / totalHeight) * 100}%`;
    }

    if (navbar) {
      if (currentScroll > 40) {
        navbar.classList.add('scrolled');
      } else {
        navbar.classList.remove('scrolled');
      }
    }

    let currentSection = '';
    sections.forEach((sec) => {
      const top = sec.offsetTop - 120;
      if (currentScroll >= top) {
        currentSection = sec.getAttribute('id');
      }
    });

    navLinks.forEach((link) => {
      link.classList.remove('active');
      if (link.getAttribute('href') === `#${currentSection}`) {
        link.classList.add('active');
      }
    });
  });
}

/* --------------------------------------------------------------------------
   6. Scroll Reveal Intersection Observer (Mobile & Laptop)
   -------------------------------------------------------------------------- */
function initScrollReveal() {
  const sections = document.querySelectorAll('.section');
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add('reveal');
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: 0.08 });

  sections.forEach((sec) => {
    observer.observe(sec);
  });
}

/* --------------------------------------------------------------------------
   7. Skill Filter Controller
   -------------------------------------------------------------------------- */
function initSkillFilters() {
  const filterBtns = document.querySelectorAll('.skill-filter-btn');
  const skillCards = document.querySelectorAll('.tech-category-card');

  filterBtns.forEach((btn) => {
    btn.addEventListener('click', () => {
      filterBtns.forEach((b) => b.classList.remove('active'));
      btn.classList.add('active');

      const filter = btn.getAttribute('data-filter');

      skillCards.forEach((card) => {
        const category = card.getAttribute('data-category');
        if (filter === 'all' || category === filter) {
          card.style.display = 'block';
          card.style.animation = 'fadeIn 0.4s cubic-bezier(0.16, 1, 0.3, 1)';
        } else {
          card.style.display = 'none';
        }
      });
    });
  });
}

/* --------------------------------------------------------------------------
   8. Project Filter Controller
   -------------------------------------------------------------------------- */
function initProjectFilters() {
  const filterBtns = document.querySelectorAll('.project-filter-btn');
  const projectCards = document.querySelectorAll('.project-card');

  filterBtns.forEach((btn) => {
    btn.addEventListener('click', () => {
      filterBtns.forEach((b) => b.classList.remove('active'));
      btn.classList.add('active');

      const filter = btn.getAttribute('data-filter');

      projectCards.forEach((card) => {
        const cat = card.getAttribute('data-category');
        if (filter === 'all' || cat === filter) {
          card.style.display = 'flex';
          card.style.animation = 'fadeIn 0.4s cubic-bezier(0.16, 1, 0.3, 1)';
        } else {
          card.style.display = 'none';
        }
      });
    });
  });
}

/* --------------------------------------------------------------------------
   9. Project Detail Modal Data & Controller
   -------------------------------------------------------------------------- */
const projectDetails = {
  1: {
    title: 'Virtual Fencing IoT System',
    category: 'IoT & GPS Real-Time System',
    img: 'assets/projects/project1.png',
    summary: 'A GPS-based virtual boundary fencing system using ESP32 and ray-casting algorithm for cattle/asset protection.',
    specs: [
      'Microcontroller: ESP32-WROOM-32',
      'GPS Module: NEO-6M High-Precision Receiver',
      'Algorithm: Ray-Casting Polygon Boundary Detection',
      'Backend Cloud: Firebase Realtime Database for Live Coordinates',
      'Actuators: High-Decibel Buzzer & Vibration Alert Motors',
      'Companion App: Mobile Web Dashboard & Capacitor Android App'
    ],
    details: 'Designed and deployed a full-stack IoT geofencing solution. The collar hardware calculates polygon boundaries locally using a ray-casting algorithm. Upon boundary breach, immediate audio/vibration deterrents activate while pushing real-time GPS telemetry to Firebase and the Capacitor Android app.',
    github: 'https://github.com/Kavin-Palanisamy',
  },
  2: {
    title: 'JARVIS AI — Embedded-Integrated Assistant',
    category: 'AI & Voice Automation',
    img: 'assets/projects/jarvis-ai.png',
    summary: 'Autonomous AI assistant powered by Gemini 2.5 Pro API with voice-driven hardware control.',
    specs: [
      'Core LLM Engine: Gemini 2.5 Pro API',
      'Software Architecture: Modular Python Architecture',
      'Speech Engine: Voice Recognition & Text-to-Speech Pipeline',
      'Embedded Interface: Serial & Microcontroller Automation Bridge'
    ],
    details: 'Built a modular AI assistant that handles natural voice interaction, automates system tasks, and communicates with embedded microcontrollers to trigger physical automation pipelines.',
    github: 'https://github.com/Kavin-Palanisamy',
  },
  3: {
    title: 'Intelligent Theft Detection System',
    category: 'Computer Vision & Security',
    img: 'assets/projects/theft-detection.png',
    summary: 'Real-time computer vision security system identifying unauthorized intrusion activity.',
    specs: [
      'Vision Engine: OpenCV',
      'Language: Python',
      'Motion Detection: Motion Bounding Boxes',
      'Alert System: Automated Emergency Snapshot Alerts'
    ],
    details: 'Monitors video streams frame-by-frame to identify suspicious movement in restricted zones, capturing instant photo snapshots and dispatching security alerts.',
    github: 'https://github.com/Kavin-Palanisamy',
  },
  4: {
    title: 'Custom KiCad ESP32 Hardware PCB',
    category: 'PCB Hardware Engineering',
    img: 'assets/projects/pcb-design.png',
    summary: 'Custom double-layer printed circuit board designed in KiCad for ESP32 gateways.',
    specs: [
      'EDA Software: KiCad 7.0',
      'Layer Count: 2 Layer PCB with Ground Copper Pour',
      'Components: SMD Resistors, Capacitors, LED Indicators & ESP32 Module',
      'Fabrication Files: Standard 3D Gerber Export'
    ],
    details: 'Engineered compact, high-reliability custom PCBs featuring clean trace routing, voltage regulation networks, noise decoupling capacitors, and standard header pinouts.',
    github: 'https://github.com/Kavin-Palanisamy',
  }
};

function initProjectModals() {
  const modal = document.getElementById('projectModal');
  const closeBtn = document.getElementById('closeProjectModal');
  const detailBtns = document.querySelectorAll('.open-project-modal');

  detailBtns.forEach((btn) => {
    btn.addEventListener('click', (e) => {
      e.preventDefault();
      const id = btn.getAttribute('data-id');
      const data = projectDetails[id];

      if (!data || !modal) return;

      document.getElementById('modalProjTitle').textContent = data.title;
      document.getElementById('modalProjCategory').textContent = data.category;
      document.getElementById('modalProjImg').src = data.img;
      document.getElementById('modalProjDetails').textContent = data.details;
      
      const specsList = document.getElementById('modalProjSpecs');
      specsList.innerHTML = '';
      data.specs.forEach((s) => {
        const li = document.createElement('li');
        li.textContent = s;
        specsList.appendChild(li);
      });

      document.getElementById('modalProjGithub').href = data.github;

      modal.classList.add('show');
      document.body.style.overflow = 'hidden';
    });
  });

  function closeModal() {
    if (modal) {
      modal.classList.remove('show');
      document.body.style.overflow = '';
    }
  }

  if (closeBtn) closeBtn.addEventListener('click', closeModal);
  if (modal) {
    modal.addEventListener('click', (e) => {
      if (e.target === modal) closeModal();
    });
  }
}

/* --------------------------------------------------------------------------
   10. Resume Modal Controller
   -------------------------------------------------------------------------- */
function initResumeModal() {
  const modal = document.getElementById('resumeModal');
  const openBtns = document.querySelectorAll('.open-resume-modal');
  const closeBtn = document.getElementById('closeResumeModal');

  function openResume() {
    if (modal) {
      modal.classList.add('show');
      document.body.style.overflow = 'hidden';
    }
  }

  function closeResume() {
    if (modal) {
      modal.classList.remove('show');
      document.body.style.overflow = '';
    }
  }

  openBtns.forEach((btn) => {
    btn.addEventListener('click', (e) => {
      e.preventDefault();
      openResume();
    });
  });

  if (closeBtn) closeBtn.addEventListener('click', closeResume);
  if (modal) {
    modal.addEventListener('click', (e) => {
      if (e.target === modal) closeResume();
    });
  }
}

/* --------------------------------------------------------------------------
   11. Certificate Lightbox Controller
   -------------------------------------------------------------------------- */
function initLightbox() {
  const lightbox = document.getElementById('lightbox');
  const lightboxImg = document.getElementById('lightboxImg');
  const lightboxCaption = document.getElementById('lightboxCaption');
  const achCards = document.querySelectorAll('.ach-card');

  achCards.forEach((card) => {
    card.addEventListener('click', () => {
      const src = card.getAttribute('data-src') || card.querySelector('img').src;
      const title = card.querySelector('h4').textContent;
      if (lightbox && lightboxImg) {
        lightboxImg.src = src;
        if (lightboxCaption) lightboxCaption.textContent = title;
        lightbox.classList.add('show');
        document.body.style.overflow = 'hidden';
      }
    });
  });

  function closeLightbox() {
    if (lightbox) {
      lightbox.classList.remove('show');
      document.body.style.overflow = '';
    }
  }

  if (lightbox) {
    lightbox.addEventListener('click', (e) => {
      if (e.target.id === 'lightbox' || e.target.id === 'lightboxImg' || e.target.id === 'closeLightbox') {
        closeLightbox();
      }
    });
  }
}

/* --------------------------------------------------------------------------
   12. Theme Toggle
   -------------------------------------------------------------------------- */
function initThemeToggle() {
  const btn = document.getElementById('themeToggleBtn');
  if (!btn) return;

  const themes = ['theme-classic', 'theme-emerald', 'theme-midnight'];
  let currentIdx = 0;

  btn.addEventListener('click', () => {
    document.body.classList.remove(...themes);
    currentIdx = (currentIdx + 1) % themes.length;
    if (themes[currentIdx] !== 'theme-classic') {
      document.body.classList.add(themes[currentIdx]);
    }
  });
}

/* --------------------------------------------------------------------------
   13. Contact Form & Toast Utility
   -------------------------------------------------------------------------- */
function showToast(msg) {
  const toast = document.getElementById('toast');
  const toastMsg = document.getElementById('toastMsg');
  if (!toast || !toastMsg) return;

  toastMsg.textContent = msg;
  toast.classList.add('show');

  setTimeout(() => {
    toast.classList.remove('show');
  }, 3500);
}

function initContactForm() {
  const form = document.getElementById('contactForm');
  const copyBtn = document.getElementById('copyEmailBtn');

  if (form) {
    form.addEventListener('submit', (e) => {
      e.preventDefault();
      showToast('Thank you! Message sent to kavin020407@gmail.com.');
      form.reset();
    });
  }

  if (copyBtn) {
    copyBtn.addEventListener('click', () => {
      const email = copyBtn.getAttribute('data-email') || 'kavin020407@gmail.com';
      navigator.clipboard.writeText(email).then(() => {
        showToast('Copied: kavin020407@gmail.com');
      });
    });
  }
}

/* Helper tab switcher */
window.switchTab = function(evt, tabId) {
  const tabBtns = document.querySelectorAll('.about-tabs-nav .tab-btn');
  const tabContents = document.querySelectorAll('.about-tab-content');

  tabBtns.forEach((b) => b.classList.remove('active'));
  tabContents.forEach((c) => c.classList.remove('active'));

  evt.currentTarget.classList.add('active');
  const target = document.getElementById(tabId);
  if (target) target.classList.add('active');
};
