class UserSerializer < ActiveModel::Serializer
  has_many :recipes
  attributes :username, :recipes
end
