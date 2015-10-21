class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :num_of_customers
      t.integer :server_id
      t.integer :table_id
      t.boolean :food_ready
      t.boolean :has_paid
      t.timestamps
    end
  end
end
