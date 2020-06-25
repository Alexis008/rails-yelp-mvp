class Restaurant < ApplicationRecord

  def index
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created'
    else
      render :new
    end
  end
end
