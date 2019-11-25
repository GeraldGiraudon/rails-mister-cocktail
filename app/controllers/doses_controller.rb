class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(params_dose)
    @dose.cocktail = @cocktail
  end

private

  def params_dose
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
