import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="image-input"
export default class extends Controller {
  static targets = ["image", "input"]

  displayImage(event) {
    const reader = new FileReader()
    reader.onload = (event) => {
      this.imageTarget.src = event.currentTarget.result
    }
    reader.readAsDataURL(event.currentTarget.files[0])
  }

  clickInput() {
    this.inputTarget.click()
  }
}
