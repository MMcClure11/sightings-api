class SightingShowSerializer < ActiveModel::Serializer
  attributes :id, :image, :identified, :common_name, :scientific_name, :public, :date, :time, :notes, :location, :category
  belongs_to :location
  belongs_to :category
  has_many :comments

  def comments
    object.comments.order("created_at ASC")
  end
end
