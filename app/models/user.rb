class User < ApplicationRecord
  has_secure_password

  has_many :sightings

  validates :name, :username, presence: true
  validates :username, uniqueness: true
end
