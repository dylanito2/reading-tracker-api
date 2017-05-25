class Student < ApplicationRecord
  belongs_to :class
  has_many :comments
  has_many :reading_levels
end
