class CarsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  def index
  self.this = Car.
    search(params[:search], :name).
    order_by(parse_sort_param(:name, :quantity)). paginate(:page => (params[:page] or 1), :per_page => 10)
  hobo_index
  end

end
