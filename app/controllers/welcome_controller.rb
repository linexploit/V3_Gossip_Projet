class WelcomeController < ApplicationController
  def index
    @first_name = params[:first_name]
    @gossips = Gossip.all
    @users = User.includes(:gossips)
  end
end
