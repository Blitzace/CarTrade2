class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :cars, :name, :string
  end

  def self.down
    remove_column :cars, :name
  end
end
