class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :brands do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :manufacturer_id
    end
    add_index :brands, [:manufacturer_id]

    create_table :manufacturers do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :cars do |t|
      t.string   :vin
      t.string   :year
      t.string   :state
      t.text     :details
      t.integer  :current_bid
      t.integer  :buyout_price
      t.datetime :ending_date
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :brand_id
    end
    add_index :cars, [:brand_id]

    create_table :bids do |t|
      t.integer  :amount
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
      t.integer  :car_id
    end
    add_index :bids, [:user_id]
    add_index :bids, [:car_id]

    add_column :users, :telephone, :string
    add_column :users, :balance, :integer, :default => 99999
  end

  def self.down
    remove_column :users, :telephone
    remove_column :users, :balance

    drop_table :brands
    drop_table :manufacturers
    drop_table :cars
    drop_table :bids
  end
end
