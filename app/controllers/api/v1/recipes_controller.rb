class Api::V1::RecipesController < ApplicationController

  def index
    render json: Recipe.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(
        :user_id,
        :name,
        :servings,
        :description,
        quantities_attributes: [:amount, :unit, ingredient_attributes: [:name]],
        instructions_attributes: [:description]
    )
  end
end
