import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['choice', 'join', 'create', 'location']
  connect() {
    console.log("Bonjour")
  }

  createGame() {
    this.joinTarget.classList.add('d-none')
    this.createTarget.classList.remove('d-none')
  }

  locate(evt) {
    navigator.geolocation.getCurrentPosition((data) => {
      // call reverse geocoding from mapbox
    })
  }
}
