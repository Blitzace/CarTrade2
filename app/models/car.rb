class Car < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    vin          :string
    year         :string
    state        :string
    details      :text
    current_bid :integer
    buyout_price :integer
    ending_date :datetime
    timestamps
  end
  attr_accessible :manufacturer, :manufacturer_id, :brand, :brand_id, :vin, :year, :state, :details, :current_bid, :buyout_price, :ending_date
belongs_to :brand, :inverse_of => :cars
belongs_to :manufacturer, :inverse_of => :cars
has_many :bids, :dependent => :destroy, :inverse_of => :car
has_many :users, :through => :bids
belongs_to :owner, :class_name => "User", :creator => true, :inverse_of => :car
children :users
  # --- Permissions --- #

  def create_permitted?
    owner_is? acting_user
  end

  def update_permitted?
    acting_user.administrator? || (owner_is?(acting_user) && !owner_changed?)
  end

  def destroy_permitted?
    acting_user.administrator? || owner_is?(acting_user)
  end

  def view_permitted?(field)
    true
  end

end
