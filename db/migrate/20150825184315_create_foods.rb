class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.integer :category_id
      t.timestamps
    end
  end
end
