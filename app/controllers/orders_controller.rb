class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      Rails.logger.info "New Order Created: #{@order.inspect}"
      flash[:notice] = "Order placed successfully!"
      redirect_to root_path
    else
      Rails.logger.error "Order Creation Failed: #{@order.errors.full_messages}"
      flash[:alert] = "Error placing order. Please try again."
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :size, toppings: [])
  end
end
