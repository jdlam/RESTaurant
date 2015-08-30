class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :party_id
      t.text :order_ids
      t.decimal :tab
      t.timestamps
    end
  end
end
