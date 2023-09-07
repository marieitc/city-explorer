import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { key: String }
  static targets = ['latitude', 'longitude','choice', 'join', 'create', 'location','loading', 'value']

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

  range(evt) {
    this.valueTarget.innerHTML = evt.target.value
    console.log(evt.target.value)
  }

  locate() {
    this.loadingTarget.classList.remove('d-none');
    navigator.geolocation.getCurrentPosition(this.success.bind(this), this.error)
  }

  async success(pos) {
    const crd = pos.coords;
    this.latitudeTarget.value = crd.latitude
    this.longitudeTarget.value = crd.longitude
    const address = `https://api.mapbox.com/geocoding/v5/mapbox.places/${crd.longitude},${crd.latitude}.json?access_token=${this.keyValue}`

    const response = await fetch(address);
    const data = await response.json();

    this.locationTarget.value = data.features[0].place_name
    this.loadingTarget.classList.add('d-none');
  }

  error(err) {
    console.warn(`ERROR(${err.code}): ${err.message}`);
  }
}
