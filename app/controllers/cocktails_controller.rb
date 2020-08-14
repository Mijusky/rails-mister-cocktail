class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show update]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @star = Star.new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :edit
    end
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :star, :description, :photo)
  end
end
