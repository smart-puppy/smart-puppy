document.addEventListener('DOMContentLoaded', () => {
  setTimeout(() => {
    const alerts = document.querySelectorAll('.alert');
    alerts.forEach(alert => {
      alert.style.transition = 'opacity 0.5s ease-out';
      alert.style.opacity = '0';
      setTimeout(() => {
        alert.remove();
      }, 500);
    });
  }, 3000);
});
