class Student < ApplicationRecord
  belongs_to :classroom
  has_many :conferences
  has_many :comments, through: :conferences
  has_many :reading_levels, through: :conferences

  SCORING_ARRAY = [*"1".."9"] + [*'a'..'z']

  def calculate_reading_level_objects
    self.reading_levels.map do |level_obj|
      rl = {}
      rl["xPosition"] = level_obj.id
      rl["Value"] = generate_numeric_value(level_obj.score)
      rl
    end
  end

  def generate_numeric_value(score)
    SCORING_ARRAY.index(score) + 1
  end

end
