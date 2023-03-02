import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "startTime", "endTime" ]
  static values = {
    booked: Array
  }

  connect() {
    flatpickr(this.startTimeTarget, {
      disable: this.bookedValue.map((date) => Date.parse(date)),
    })

    flatpickr(this.endTimeTarget, {
      disable: this.bookedValue.map((date) => Date.parse(date)),
    })
  }
}
