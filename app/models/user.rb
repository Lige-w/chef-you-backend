class User < ApplicationRecord
  has_many :recipes

  validates :username, uniqueness: { case_sensitive: false }
end
