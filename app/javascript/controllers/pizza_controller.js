import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["image"];

  updatePizza(event) {
    const pizzaType = event.currentTarget.dataset.pizza;
    console.log("Pizza selected:", pizzaType); // Debugging log

    const imagePath = this.imageTarget.dataset[`${pizzaType}Path`];

    if (imagePath) {
      console.log("Updating image to:", imagePath); // Debugging log
      this.imageTarget.src = imagePath;
    } else {
      console.error("No image path found for:", pizzaType);
    }
  }
}
