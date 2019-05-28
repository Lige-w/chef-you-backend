class InstructionSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :description
end
