class CreateOrders < ActiveRecord::Migration
  def change
    create_table :order do |t|
      t.integer :party_id
      t.integer :food_id
      t.string :notes
      t.decimal :total_cost
    end
  end
end
