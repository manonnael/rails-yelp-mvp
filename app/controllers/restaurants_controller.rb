class RestaurantsController < ApplicationController
  before_action :set_restaurants, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    @restaurant.save
    redirect_to restaurants_path
  end

  # def edit; end

  # def update
  #   @restaurant.update(params_restaurant)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   @restaurant.destroy
  #   redirect_to restaurants_path
  # end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end
end
