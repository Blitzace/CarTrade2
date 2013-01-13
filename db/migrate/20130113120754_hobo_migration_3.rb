class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :cars, :owner_id, :integer

    add_index :cars, [:owner_id]
  end

  def self.down
    remove_column :cars, :owner_id

    remove_index :cars, :name => :index_cars_on_owner_id rescue ActiveRecord::StatementInvalid
  end
end
