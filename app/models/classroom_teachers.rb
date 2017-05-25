class ClassroomTeachers < ApplicationRecord
  belongs_to :classroom
  belong_to :teacher
end
