class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
    @users = User.includes(:gossips)
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
    @users = User.all
    @cities = City.all
  end


  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to gossips_path
      flash[:success] = "Le potin a été enregistré avec succès !"
    else
      flash.now[:error] = "Erreur : Le titre doit être compris entre 3 et 14 caractères, et il ne faut pas qu'un des champs soit vide."
      render :new
    end
  end

  # def update
  #   @gossip = Gossip.find(params[:id])
  #   if @gossip.update(params[:id])
  #     redirect_to gossips_path(@gossip)
  #   else
  #     render :edit
  #   end
  # end


  private
  def gossip_params
    params.require(:gossip).permit(:title, :description, :user_id, :city_id)
  end
end
