class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :sightings
  has_many :sightings
 
end
