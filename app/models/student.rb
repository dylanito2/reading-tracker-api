class Student < ApplicationRecord
  belongs_to :classroom
  has_many :comments
  has_many :reading_levels

  SCORING_ARRAY = [*"1".."9"] + [*'a'..'z']

  def calculate_reading_level_objects
    self.reading_levels.map do |score|
      rl[display] = score
      rl[value] = generate_numeric_value(score)
    end
  end

  def generate_numeric_value(score)
    SCORING_ARRAY.indexOf(score) + 1
  end

end
