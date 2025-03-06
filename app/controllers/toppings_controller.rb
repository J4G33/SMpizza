class ToppingsController < ApplicationController
  def check_duplicate
    topping = Topping.find_by(name: params[:name])
    render json: { exists: topping.present? }
  end

  def edit
    topping = Topping.find(params[:id])
    render json: { name: topping.name }
  end
end