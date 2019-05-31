class Api::V1::RecipesController < ApplicationController

  before_action :get_recipe, only: [:show, :update, :destroy]
  def index
    render json: Recipe.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  def show
    render json: @recipe
  end

  def update
    @recipe.update(recipe_params)
    render json: @recipe
  end

  def destroy
    @user = @recipe.user
    @recipe.destroy
    render json: @user
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(
        :user_id,
        :name,
        :servings,
        :description,
        quantities_attributes: [:amount, :unit, :id, :index, ingredient_attributes: [:name, :id]],
        instructions_attributes: [:description, :id, :index]
    )
  end
end
