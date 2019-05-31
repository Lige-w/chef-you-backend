class QuantitySerializer < ActiveModel::Serializer
  belongs_to :ingredient
  attributes :id, :recipe_id, :ingredient_id, :name, :amount, :unit, :index
end
