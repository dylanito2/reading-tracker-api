class Classroom < ApplicationRecord
  has_many :classroom_teachers
  has_many :teachers, through: :classroom_teachers
  has_many :students
end
