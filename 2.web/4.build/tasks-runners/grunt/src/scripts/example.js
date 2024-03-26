// Smooth scrolling
document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
  anchor.addEventListener('click', function (e) {
    e.preventDefault()

    document.querySelector(this.getAttribute('href')).scrollIntoView({
      behavior: 'smooth',
    })
  })
})

// Responsive navigation toggle
const navToggle = document.querySelector('.nav-toggle')
const navMenu = document.querySelector('.nav-menu')

navToggle.addEventListener('click', () => {
  navMenu.classList.toggle('show')
})

// Modal functionality
const modalTrigger = document.querySelector('.modal-trigger')
const modalClose = document.querySelector('.modal-close')
const modal = document.querySelector('.modal')

modalTrigger.addEventListener('click', () => {
  modal.classList.add('show')
})

modalClose.addEventListener('click', () => {
  modal.classList.remove('show')
})

// Carousel/slider functionality
let slideIndex = 0
showSlides()

function showSlides() {
  let i
  const slides = document.querySelectorAll('.slide')
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none'
  }
  slideIndex++
  if (slideIndex > slides.length) {
    slideIndex = 1
  }
  slides[slideIndex - 1].style.display = 'block'
  setTimeout(showSlides, 2000) // Change image every 2 seconds
}

// Form validation
const form = document.querySelector('.form')
const emailInput = document.querySelector('.email-input')

form.addEventListener('submit', (e) => {
  e.preventDefault()

  if (!isValidEmail(emailInput.value)) {
    alert('Please enter a valid email address')
    return
  }

  // Proceed with form submission
  form.submit()
})

function isValidEmail(email) {
  // Regular expression for email validation
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
  return emailRegex.test(email)
}

// Scroll to top button
const scrollToTopBtn = document.querySelector('.scroll-to-top-btn')

window.addEventListener('scroll', () => {
  if (window.pageYOffset > 100) {
    scrollToTopBtn.classList.add('show')
  } else {
    scrollToTopBtn.classList.remove('show')
  }
})

scrollToTopBtn.addEventListener('click', () => {
  window.scrollTo({ top: 0, behavior: 'smooth' })
})
