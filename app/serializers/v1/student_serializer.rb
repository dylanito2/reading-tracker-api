class V1::StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
  has_many :reading_levels
  has_many :comments
end
