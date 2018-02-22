class Cocktailscontroller < ApplicationController
  before_action :set_cocktail, only: [:name, :description :ingredient, :doses, :destroy]


  def index
    @cocktails = Cocktails.all
  end

  def show
  end

  def new
    @cocktails = Cocktails.new
  end

  def edit
  end


  def create
    @cocktails = Cocktails.new(cocktails_params)

    if @cocktails.save
      redirect_to @cocktails
    else
      render(:new)
    end
  end


  def update
  end

  def destroy
    @cocktails.destroy
    respond_to do |format|
      format.html { redirect_to cocktails_url, notice: 'cocktail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

  def cocktails_params
      params.require(:cocktails).permit(:name, :description :ingredient, :dose)
  end
end
