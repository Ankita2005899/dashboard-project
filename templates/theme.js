// ============================================
//  THEME.JS — Global Theme Manager
//  Add this to every page and it auto-works!
// ============================================

(function () {

  // 1. Read saved theme from localStorage (default = dark, same as index.html)
  const saved = localStorage.getItem('shopsphere-theme') || 'dark';
  document.documentElement.setAttribute('data-theme', saved);

  // 2. Create the toggle button automatically
  function createToggleButton() {
    const btn = document.createElement('button');
    btn.id = 'themeToggle';
    btn.innerHTML = saved === 'dark' ? '☀️ Light Mode' : '🌙 Dark Mode';
    btn.setAttribute('title', 'Toggle Theme');
    document.body.appendChild(btn);

    // 3. Toggle on click
    btn.addEventListener('click', function () {
      const current = document.documentElement.getAttribute('data-theme');
      const next = current === 'dark' ? 'light' : 'dark';

      // Apply to current page
      document.documentElement.setAttribute('data-theme', next);

      // Save to localStorage using the SAME key as index.html
      localStorage.setItem('shopsphere-theme', next);

      // Update button text
      btn.innerHTML = next === 'dark' ? '☀️ Light Mode' : '🌙 Dark Mode';
    });
  }

  // 4. Wait for body to be ready then add button
  if (document.body) {
    createToggleButton();
  } else {
    document.addEventListener('DOMContentLoaded', createToggleButton);
  }

})();
