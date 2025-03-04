// app/javascript/application.js
import { Application } from "@hotwired/stimulus";
import PizzaController from "./controllers/pizza_controller";

window.Stimulus = Application.start();
Stimulus.register("pizza", PizzaController);
import "controllers"
