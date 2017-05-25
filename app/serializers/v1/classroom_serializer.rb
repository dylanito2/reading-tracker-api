class V1::ClassroomSerializer < ActiveModel::Serializer
  attributes :id, :room_number, :grade, :student_count, :name
  has_many :teachers
end
