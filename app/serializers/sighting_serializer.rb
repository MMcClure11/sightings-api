class SightingSerializer < ActiveModel::Serializer
  attributes :id, :image, :identified, :common_name, :scientific_name, :public, :date, :time, :notes, :location, :category, :user
  belongs_to :user
  belongs_to :location
  belongs_to :category
end
