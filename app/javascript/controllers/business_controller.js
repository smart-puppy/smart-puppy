import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="business"
export default class extends Controller {
  static targets = ["checkbox"]
  connect() {
    console.log('I am connected!')
  }
  toggleBusiness() {console.log('I am here!')}
}
