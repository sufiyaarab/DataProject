const form = document.getElementById('cancellation-form');
const modal = document.getElementById('confirmation-modal');
const closeButton = document.querySelector('.close-btn');
const backButton = document.getElementById('back-button');
const confirmButton = document.getElementById('confirm-button');

// Open modal on form submit
form.addEventListener('submit', function (e) {
  e.preventDefault(); // Prevent form submission
  modal.style.display = 'flex'; // Show modal
});

// Close modal
closeButton.addEventListener('click', () => {
  modal.style.display = 'none';
});

// Back button
backButton.addEventListener('click', () => {
  modal.style.display = 'none';
});

// Confirm button
confirmButton.addEventListener('click', () => {
  modal.style.display = 'none';
  alert('Your cancellation request has been submitted.');
  form.reset(); // Optionally reset the form
});
