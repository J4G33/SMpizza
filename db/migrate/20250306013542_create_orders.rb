class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :size
      t.text :toppings

      t.timestamps
    end
  end
end
