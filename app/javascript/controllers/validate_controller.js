import { Controller } from "@hotwired/stimulus"

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
        "Content-Type": "multipart/form-data"
      },
      body: JSON.stringify(new FormData(this.formTarget))
    }

    const response = await fetch(`/games/${this.gameIdValue}/validate`, options)
  }
}
