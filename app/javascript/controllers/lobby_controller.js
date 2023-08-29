import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lobby"
export default class extends Controller {
  static targets = ["parameters", "content"]
  connect() {
    console.log("Bonjour")
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
