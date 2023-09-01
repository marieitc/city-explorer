import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper/bundle';

// Connects to data-controller="swiper"
export default class extends Controller {
  static targets = ["card", "img"]

  connect() {
    const swiper = new Swiper(this.element, {
      effect: "cards",
      grabCursor: true,
    });
  }

  select(event) {
    event.currentTarget.classList.toggle("selected-img")
  }
}
