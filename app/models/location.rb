class Location < ApplicationRecord
  has_many :sightings

  validates :city, :region, :country, presence: true
end
