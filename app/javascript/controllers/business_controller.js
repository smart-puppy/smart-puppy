import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="business"
export default class extends Controller {
  static targets = ["checkbox"]

  connect() {
    console.log('I am connected!')
    console.log(this.checkboxTarget.firstElementChild)
  }

  checkBusiness() {
    this.checkboxTarget.checked = true
  }

  uncheckBusiness() {
    this.checkboxTarget.checked = false
  }
}
