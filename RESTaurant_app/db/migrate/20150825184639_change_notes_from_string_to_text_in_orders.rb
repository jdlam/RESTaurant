class ChangeNotesFromStringToTextInOrders < ActiveRecord::Migration
  def up
    rename_table :order, :orders
    change_column :orders, :notes, :text
  end

  def down
    change_column :orders, :notes, :string
    rename_table :orders, :order

  end
end
