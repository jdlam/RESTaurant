class RemoveOrderIdsFromReceipts < ActiveRecord::Migration
  def change
    remove_column :receipts, :order_ids
  end
end
