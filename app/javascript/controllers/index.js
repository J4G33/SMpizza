import { application } from "../application";

import HelloController from "./hello_controller";
import PizzaController from "./pizza_controller";

application.register("hello", HelloController);
application.register("pizza", PizzaController);
