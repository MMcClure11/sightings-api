class Sighting < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :location

  has_many :comments
  has_many :users, through: :comments

  validates :image, :date, presence: true
end
