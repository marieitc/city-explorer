import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pin"
export default class extends Controller {
  static targets = ["pin"]
  static values = {
    joinUrl: String,
    gamePin: String
  }
  connect() {
    console.log(this.gamePinValue);
  }

  async copy(event) {
    var btn = event.currentTarget
    try {
      await navigator.clipboard.writeText(this.pinTarget.innerText.match(/(?<=PIN: ).+/))
      btn.classList.add("copied")
      setTimeout(() => {
        btn.classList.remove("copied")
      }, 2000);
    } catch (err) {
      console.error("Failed to copy", err)
    }
  }

  share(event) {
      const data = {
        // url: A string representing a URL to be shared.
        // text: A string representing text to be shared.
        // title: A string representing a title to be shared. May be ignored by the target.
        // files: An array of File objects representing files to be shared. See below for shareable file types.
        title: "Come play with me!",
        text:  "Join me on city explorer",
        url: `${window.location.host}${this.joinUrlValue}?join_code=${this.gamePinValue}`
      }
      if (navigator.share) {
        navigator.share(data)
          .then(() => { console.log('Thanks for sharing!') })
          .catch(console.error)
      } else {
        console.log(data)
      }
    }

}
