import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['choice', 'join', 'create', 'location']
  connect() {
    console.log("Bonjour")
  }

  createGame() {
    this.choiceTarget.classList.add('d-none')
    this.createTarget.classList.remove('d-none')
  }

  joinGame() {
    this.choiceTarget.classList.add('d-none')
    this.joinTarget.classList.remove('d-none')
  }

  return() {
    this.choiceTarget.classList.remove('d-none')
    this.createTarget.classList.add('d-none')
    this.joinTarget.classList.add('d-none')

  }

  locate(evt) {
    navigator.geolocation.getCurrentPosition((data) => {
      // call reverse geocoding from mapbox
    })
  }
}
