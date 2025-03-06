class PizzasController < ApplicationController
  def toppings
    pizza_type = params[:type]
    toppings = case pizza_type
               when "cheese"
                 [{ name: "Mozzarella" }, { name: "Tomato Sauce" }]
               when "pepperoni"
                 [{ name: "Mozzarella" }, { name: "Tomato Sauce" }, { name: "Pepperoni" }]
               when "combo"
                 [{ name: "Mozzarella" }, { name: "Tomato Sauce" }, { name: "Pepperoni" }, { name: "Olives" }, { name: "Bell Peppers" }]
               else
                 []
               end
    render json: toppings
  end
end