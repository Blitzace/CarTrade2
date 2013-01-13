class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :cars, :manufacturer_id, :integer

    add_index :cars, [:manufacturer_id]
  end

  def self.down
    remove_column :cars, :manufacturer_id

    remove_index :cars, :name => :index_cars_on_manufacturer_id rescue ActiveRecord::StatementInvalid
  end
end
