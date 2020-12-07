class SightingShowSerializer < ActiveModel::Serializer
  attributes :id, :image, :identified, :common_name, :scientific_name, :public, :date, :time, :notes, :location, :category
  belongs_to :location
  belongs_to :category
end
