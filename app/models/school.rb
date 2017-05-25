class School < ApplicationRecord
  has_many :teachers
  has_many :classes, through: :teachers
  has_many :students, through: :classes
end
