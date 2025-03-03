# app/models/topping.rb
class Topping < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end