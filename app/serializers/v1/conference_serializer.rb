class V1::ConferenceSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_many :comments, serializer: V1::CommentSerializer
  has_one :reading_level, serializer: V1::ReadingLevelSerializer

  def date
    object.created_at.strftime("%a %b %Y")
  end

end
