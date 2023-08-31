import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="lobby"
export default class extends Controller {
  static targets = ["parameters", "content", "players"]
  static values = { id: Number }

  connect() {
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

    if (data.action === 'join') {
      this.playersTarget.insertAdjacentHTML('beforeend', data.html);
      return;
    }
  }

  async start(evt) {
    evt.preventDefault();
    evt.stopPropagation();

    await fetch(evt.target.href)
  }
}
