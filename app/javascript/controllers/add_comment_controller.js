import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form"];

  displayComment() {
    this.formTarget.classList.toggle("d-none")
  }
}
