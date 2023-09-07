import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2';
// import Toastify from 'toastify-js';

// Connects to data-controller="validae"
export default class extends Controller {
  static targets =  ["images", "photoInput", "placeInput", "form", "latitude", "longitude"]
  static values = { gameId: Number }

  connect() {
    this.token = document.querySelector('meta[name=csrf-token]').content
    document.addEventListener("swiper:card:clicked", this.select.bind(this))
  }

  photo() {
    this.photoInputTarget.click();
  }

  select(evt) {
    const card = document.getElementById(`place-id-${evt.detail.placeId}`)
    this.#setCoords();
    if (!card || !card.closest('.swiper-slide').classList.contains('swiper-slide-active')) return
    this.placeInputTarget.value = evt.detail.placeId;
  }

  // select(evt) {
  //   const card = evt.currentTarget.closest('.swiper-slide')
  //   this.#setCoords();
  //   if (!card.classList.contains('swiper-slide-active')) return
  //   this.placeInputTarget.value = evt.params.placeId;
  // }

  async validate(evt) {
    evt.preventDefault();
    evt.stopPropagation();
    const formData = new FormData(this.formTarget)

    const options = {
      method: 'POST',
      headers: {
        'X-CSRF-TOKEN': this.token,
        'Accept': 'application/json'
      },
      body: formData
    }

    const response = await fetch(`/games/${this.gameIdValue}/validate`, options)
    const data = await response.json();

    if (data.found === true) {
      Toastify({
        text: data.message,
        className: 'notif',
        gravity: 'bottom',
        style: {
          background: "#ffffff",
          opacity: 0.9
        },
        duration: 4000000
      }).showToast();
    } else {
      Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: 'Keep looking...',
      })
    }
  }

  #setCoords() {
    navigator.geolocation.getCurrentPosition((position) => {
      this.latitudeTarget.value = position.coords.latitude;
      this.longitudeTarget.value = position.coords.longitude;
    });
  }
}
