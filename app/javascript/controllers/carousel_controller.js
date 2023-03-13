import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel"
export default class extends Controller {
  connect() {
  }
}

const carouselContainer = document.querySelector('.carousel-container');

// Clone the carousel items and append them to the end of the container
const carouselItems = document.querySelectorAll('.logo-item');
carouselItems.forEach(item => {
  const clone = item.cloneNode(true);
  carouselContainer.appendChild(clone);
});

// Remove the original carousel items
carouselItems.forEach(item => item.remove());
