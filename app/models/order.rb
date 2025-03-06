class Order < ApplicationRecord
  serialize :toppings, coder: JSON
  validates :name, presence: true
  validates :size, presence: true
end
