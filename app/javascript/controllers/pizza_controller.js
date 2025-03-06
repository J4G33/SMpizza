import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]

  updatePizza(event) {
    const pizzaType = event.target.closest("[data-pizza]").dataset.pizza
    const imageSrc = {
      cheese: "/assets/cheese.jpg",
      pepperoni: "/assets/pep.jpg",
      combo: "/assets/combo.jpg"
    }[pizzaType]
    this.imageTarget.src = imageSrc
  }
}
