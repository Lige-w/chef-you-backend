class RecipeSerializer < ActiveModel::Serializer
  has_many :instructions
  has_many :quantities
  attributes :id, :name, :description, :servings, :user_id
end
