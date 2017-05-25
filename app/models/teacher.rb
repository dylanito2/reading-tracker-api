class Teacher < ApplicationRecord

  has_many :classes
  has_many :students, through: :classes
  has_many :comments
  has_many :reading_levels

end
