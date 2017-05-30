class V1::StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :classroom_id
  has_many :conferences, serializer: V1::ConferenceSerializer
  
end
