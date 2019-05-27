class Api::V1::RecipesController < ApplicationController

  def index
    render json: Recipe.all
  end

  def create

  end
end
