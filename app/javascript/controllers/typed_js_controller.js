import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new
    Typed(this.element, {
      strings: ["Rent a plane, ^300 see the world", "Rent a plane, rule the world"],
      typeSpeed: 50,
      loop: false,
      showCursor: false,
      smartBackspace: true
    })
  }
}
