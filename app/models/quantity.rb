class Quantity < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient

  delegate :name, to: :ingredient

  def ingredient_attributes=(ingredient)
    self.ingredient = Ingredient.find_or_create_by(name: ingredient[:name])
  end

end

