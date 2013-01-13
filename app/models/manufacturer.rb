class Manufacturer < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    timestamps
  end
  attr_accessible :name, :brands
  has_many :brands, :dependent => :destroy, :inverse_of => :manufacturer
  has_many :cars, :inverse_of => :manufacturer, :dependent => :destroy
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
