class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktails = Cocktail.find(params[:id])
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
    @cocktails = Cocktail.new(params_cocktail)
    @cocktails.save
  end

  private

  def params_cocktail
  params.require(:cocktail).permit(:name)
  end


end
