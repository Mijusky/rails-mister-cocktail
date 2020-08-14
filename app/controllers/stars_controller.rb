class StarsController < ApplicationController
  before_action :set_cocktail
  def create
    @star = Star.new(star_params)
    @star.cocktail = @cocktail
    @star.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def star_params
    params.require(:star).permit(:number)
  end
end
