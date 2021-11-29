import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["buttonOne", "buttonTwo", "form"]

  connect() {
    console.log("connected")
  }

  imageClickOne() {
    this.formTarget[1].value = this.buttonOneTarget.innerText
    this.formTarget.submit();
  }

  imageClickTwo() {
    this.formTarget[1].value = this.buttonTwoTarget.innerText
    this.formTarget.submit();
  }
}
