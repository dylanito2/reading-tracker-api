class Student < ApplicationRecord
  belongs_to :classroom
  has_many :comments
  has_many :reading_levels
end
