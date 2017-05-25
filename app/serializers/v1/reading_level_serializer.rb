class V1::ReadingLevelSerializer < ActiveModel::Serializer
  attributes :id, :score, :created_at
end
