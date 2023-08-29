import { Controller } from "@hotwired/stimulus"

export default class extends Controller {


  static targets = ['latitude', 'longitude','choice', 'join', 'create', 'location']

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

  locate() {
    navigator.geolocation.getCurrentPosition(this.success.bind(this), this.error)
  }

  async success(pos) {
    const key = "pk.eyJ1IjoiYjNuajRtMW4iLCJhIjoiY2xsdjFmNTR1MTl0bDNnbnp0bmhnZnI1MyJ9.9iSc8pLvzVSXmoE0Wy7TKg"
    const crd = pos.coords;
    this.latitudeTarget.value = crd.latitude
    this.longitudeTarget.value = crd.longitude
    const address = `https://api.mapbox.com/geocoding/v5/mapbox.places/${crd.longitude},${crd.latitude}.json?access_token=${key}`

    const response = await fetch(address);
    const data = await response.json();

    this.locationTarget.value = data.features[0].place_name
  }

  error(err) {
    console.warn(`ERROR(${err.code}): ${err.message}`);
  }
}
