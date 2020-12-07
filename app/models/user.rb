class User < ApplicationRecord
  has_secure_password

  has_many :sightings
  has_many :comments
  has_many :sightings, through: :comments

  validates :name, :username, presence: true
  validates :username, uniqueness: true
end
