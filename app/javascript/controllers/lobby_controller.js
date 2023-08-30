import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="lobby"
export default class extends Controller {
  static targets = ["parameters", "content", "players"]
  static values = { id: Number }

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "LobbyChannel", id: this.idValue },
      { received: data => this.playersTarget.insertAdjacentHTML("beforeend", data) }
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
}
