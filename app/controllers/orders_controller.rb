class OrdersController < ApplicationController
  def new
    # This will render the form for new orders
  end

  def create
    # Process the order here
    redirect_to root_path, notice: "Order placed successfully!"
  end
end
