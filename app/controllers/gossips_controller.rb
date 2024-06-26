class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
    @users = User.includes(:gossips)
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossips = Gossip.all
    @gossip = Gossip.new
    @users = User.includes(:gossips)
    @cities = City.all
  end

  def edit
    @gossips = Gossip.all
    @gossip = Gossip.new
    @users = User.includes(:gossips)
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

  def update
    @gossip = Gossip.new(gossip_params)
    if @gossip.update(gossip_params)
      redirect_to gossips_path
      flash[:success_edit] = "Le potin a été édité avec succès !"
    else
      flash.now[:error_edit] = "Erreur"
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path, notice: "Le potin a été supprimé avec succès !"
  end


  private
  def gossip_params
    params.require(:gossip).permit(:title, :description, :user_id, :city_id)
  end
end
