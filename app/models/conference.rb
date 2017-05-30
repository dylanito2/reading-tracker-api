class Conference < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  has_many :comments
  has_one :reading_level
end
