class Recipe < ApplicationRecord
  belongs_to :user
  has_many :instructions
  has_many :quantities
  has_many :ingredients, through: :quantities

  accepts_nested_attributes_for :quantities
  accepts_nested_attributes_for :instructions
end
