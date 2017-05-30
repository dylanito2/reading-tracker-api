class V1::ConferenceSerializer < ActiveModel::Serializer
  attributes :id
  has_many :comments, serializer: V1::CommentSerializer
  has_one :reading_level, serializer: V1::ReadingLevelSerializer
end
