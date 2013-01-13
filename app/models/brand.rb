class Brand < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    timestamps
  end
  attr_accessible :name, :manufacturer, :manufacturer_id
  
belongs_to :manufacturer, :inverse_of => :brands
has_many :cars, :dependent => :destroy, :inverse_of => :brand

children :cars
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
