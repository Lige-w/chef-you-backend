class Recipe < ApplicationRecord
  belongs_to :user
  has_many :instructions, dependent: :destroy
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantities

  validates :name, presence: true

  accepts_nested_attributes_for :quantities
  accepts_nested_attributes_for :instructions
end
