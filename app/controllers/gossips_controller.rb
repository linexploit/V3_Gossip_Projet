class GossipsController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def index
    redirect_to welcome_path(first_name: "Thomas")
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to gossips_path(@gossip), notice:"Le potin à été créé !"
    else
      render :new
    end
  end

  private
  def gossip_params
    params.require(:gossip).permit(:title, :description, :user_id)
  end
end
