class V1::ConferenceSerializer < ActiveModel::Serializer
  attributes :id
  has_many :comments
  has_many :reading_levels
end
