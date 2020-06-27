class RestaurantsController < ApplicationController
    def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(restaurans_params)

    if @restaurant.save
      redirect_to @restaurants, notice: 'Restaurant was successfully created'
    else
      render :new
    end
  end
end
