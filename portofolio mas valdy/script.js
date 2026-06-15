// ==========================================================================
// Devaldy's Portfolio Helper Script
// ==========================================================================

window.addEventListener('DOMContentLoaded', () => {
  // 1. Success Toast Notification on Homepage Redirect
  const urlParams = new URLSearchParams(window.location.search);
  if (urlParams.get('submitted') === 'true') {
    const toast = document.getElementById('submit-toast');
    if (toast) {
      toast.classList.add('show');
      setTimeout(() => {
        toast.classList.remove('show');
        // Clean up search query parameter without page reload
        const cleanUrl = window.location.protocol + "//" + window.location.host + window.location.pathname;
        window.history.replaceState({ path: cleanUrl }, '', cleanUrl);
      }, 3000);
    }
  }

  // 2. Contact Form Submit Listener
  const contactForm = document.querySelector('.contact-form-sim');
  if (contactForm) {
    contactForm.addEventListener('submit', (e) => {
      e.preventDefault();
      triggerSubmitSim();
    });
  }
});

// Simulate form submission and redirect to home with success state
function triggerSubmitSim() {
  window.location.href = 'index.html?submitted=true';
}
