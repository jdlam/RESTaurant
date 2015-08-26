class AddTotalToParties < ActiveRecord::Migration
  def change
    add_column :parties, :tab, :decimal
  end
end
