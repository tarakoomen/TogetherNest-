import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      dateFormat: "d/m/Y", // Set the date format to dd/mm/yyyy
      onChange: function(selectedDates, dateStr, instance) {
        // Split the date string by '/' and reverse the array to change the order
        var parts = dateStr.split('/');

        // Join the parts with '/'
        var formattedDate = parts.join('/');
        // Set the formatted date value back to the input
        instance.input.value = formattedDate;
      }
    });
  }
}
