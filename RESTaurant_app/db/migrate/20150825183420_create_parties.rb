class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :num_of_customers
      t.boolean :has_paid
      t.integer :server_id
      t.timestamps
    end
  end
end
