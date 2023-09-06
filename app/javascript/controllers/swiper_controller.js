import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper/bundle';

// Connects to data-controller="swiper"
export default class extends Controller {
  static targets = ["card", "img", "swiperContainer", "validate"]

  connect() {
    this.cards = Array.from(this.cardTarget.querySelectorAll(".swiper-slide"))
    const swiper = new Swiper(this.swiperContainerTarget, {
      effect: "cards",
      grabCursor: true,
    });

    swiper.on('click', (event) => {
      const currentCard = event.slides.find(slide => slide.classList.contains("swiper-slide-active"))
      const placeId = currentCard.dataset.placeId

      const clickedCardEvent = new CustomEvent("swiper:card:clicked", {
        detail: {
          placeId: placeId
        },
      })
      document.dispatchEvent(clickedCardEvent)
    })

    swiper.on('slideChange', (event) => {
      this.validateTarget.classList.add("d-none")
      this.cards.forEach(card => {
        card.querySelector("img").classList.remove("selected-img")
      });
    });
  }
}
