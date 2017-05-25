class Teacher < ApplicationRecord

  has_one :classroom_teacher
  has_many :classrooms, through: :classroom_teacher
  has_many :students, through: :classrooms
  has_many :comments
  has_many :reading_levels

end
