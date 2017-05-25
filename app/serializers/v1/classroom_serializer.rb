class V1::ClassroomSerializer < ActiveModel::Serializer
  attributes :id, :room_number, :grade, :student_count
  has_many :teachers
end
