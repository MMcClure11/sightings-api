class SightingShowSerializer < ActiveModel::Serializer
  attributes :id, :image, :identified, :common_name, :scientific_name, :public, :date, :time, :notes, :location, :category, :username
  belongs_to :location
  belongs_to :category
  has_many :comments

  def username
    object.user.username
  end

  def comments
    object.comments.order("created_at ASC")
  end
end
