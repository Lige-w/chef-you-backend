class RecipeSerializer < ActiveModel::Serializer
  has_many :instructions
  has_many :quantities
  has_many :ingredients, through: :quantities
  attributes :id, :name, :description, :servings, :user_id
end
