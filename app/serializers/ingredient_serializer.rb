class IngredientSerializer < ActiveModel::Serializer
  has_many :quantities
  attributes :id, :name
end
