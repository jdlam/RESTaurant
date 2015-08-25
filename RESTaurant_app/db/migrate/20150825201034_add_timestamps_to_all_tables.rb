class AddTimestampsToAllTables < ActiveRecord::Migration
  def up
    add_column :foods, :timestamps, :timestamp
    add_column :orders, :timestamps, :timestamp
    add_column :parties, :timestamps, :timestamp
    add_column :servers, :timestamps, :timestamp
  end

  def down
    remove_column :foods, :timestamps
    remove_column :orders, :timestamps
    remove_column :parties, :timestamps
    remove_column :servers, :timestamps
  end
end
