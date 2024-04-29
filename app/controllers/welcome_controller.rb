class WelcomeController < ApplicationController
  def index
    @first_name = "Jean-Mich"
    @gossips = Gossip.all
    @users = User.includes(:gossips)
  end
end
