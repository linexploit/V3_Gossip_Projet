class CityController < ApplicationController
  def index
    first_city = City.first
    @cities = City.all
    @users = User.includes(:gossips)
  end

  def show
    @city = City.find(params[:id])
    @gossips = @city.gossips
    @cities = City.all
    @cities_with_gossips = City.joins(:gossips).distinct
  end
end
