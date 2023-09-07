import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="lobby"
export default class extends Controller {
  static targets = ["parameters", "content", "players", "participation", "loader", "playBtn"]
  static values = { id: Number, userId: Number }

  connect() {
    this.token = document.querySelector("meta[name='csrf-token']").content
    console.log(this.token)

    this.channel = createConsumer().subscriptions.create(
      { channel: "LobbyChannel", id: this.idValue },
      { received: data => this.#handleData(data) }
    )

    console.log(`connected to channel ${this.idValue}`)
  }

  parameters() {
    this.parametersTarget.classList.remove("d-none");
    this.contentTarget.classList.add("d-none");
  }

  content() {
    this.parametersTarget.classList.add("d-none");
    this.contentTarget.classList.remove("d-none");
  }

  #handleData(data) {

    if (data.action === 'start') {
      // TODO countdown

      window.location.href = data.url;
      return;
    }

    if (data.action === 'ready') {
      // this.participationTargets.find(t => t.id == data.participation_id).classList.add('ready')
      this.element.querySelector(`#participation_${data.participation_id}`).classList.add('ready')
      return;
    }

    if (data.action === 'join') {
      this.playersTarget.insertAdjacentHTML('beforeend', data.html);
      return;
    }
  }

  async start(evt) {
    evt.preventDefault();
    evt.stopPropagation();
    if (!this.hasGeoloc) return

    await fetch(evt.target.href)
  }

  async ready(evt) {
    const readyUrl = evt.currentTarget.href

    this.loaderTarget.classList.remove("d-none")
    evt.preventDefault();
    evt.stopPropagation();

    navigator.geolocation.getCurrentPosition(async (coordinates) => {
      const latitude = coordinates.coords.latitude
      const longitude = coordinates.coords.longitude


      const options = {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-TOKEN': this.token
        },
        body: JSON.stringify({ user_id: this.userIdValue, latitude: latitude, longitude: longitude })
      }

      await fetch(readyUrl, options)

      this.hasGeoloc = true
      this.playBtnTarget.classList.remove('opacity-25')

      this.loaderTarget.classList.add("d-none")
    })
  }
}
