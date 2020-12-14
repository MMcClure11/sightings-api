class Category < ApplicationRecord
  has_many :sightings

  validates :name, presence: true
end
