class PlantSerializer < ActiveModel::Serializer
  attributes :id, :kind, :light, :water, :zone, :landscape_categories
end
