# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def pricing
    @toppings = Topping.all # Fetch all toppings to display in the view
    @topping = Topping.new # Initialize a new topping for the form
  end

  def index
    @toppings = Topping.all # Fetch all toppings to display in the view (if needed here)
    @topping = Topping.new # Initialize a new topping for the form (if needed here)
  end
end