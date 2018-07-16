class PlantSerializer < ActiveModel::Serializer
  attributes :id, :kind, :light, :water, :zone
end
