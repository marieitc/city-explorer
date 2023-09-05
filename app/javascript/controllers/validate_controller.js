import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2';
import Toastify from 'toastify-js';

// Connects to data-controller="validae"
export default class extends Controller {
  static targets =  ["images", "photoInput", "placeInput", "form"]
  static values = { gameId: Number }

  connect() {
    this.token = document.querySelector('meta[name=csrf-token]').content
  }

  photo() {
    this.photoInputTarget.click();
  }

  select(evt) {
    this.placeInputTarget.value = evt.params.placeId;
  }

  async validate(evt) {
    console.log(this.formTarget)
    evt.preventDefault();
    evt.stopPropagation();

    const options = {
      method: 'POST',
      headers: {
        'X-CSRF-TOKEN': this.token,
      },
      body: new FormData(this.formTarget)
    }

    const response = await fetch(`/games/${this.gameIdValue}/validate`, options)
    const data = await response.json();

    if (data.found === true) {
      Toastify({
        text: data.message,
        duration: 3000
      }).showToast();
    } else {
      Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: 'Keep looking...',
      })
    }
  }
}
