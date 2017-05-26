class AddTeacherToReadingLevels < ActiveRecord::Migration[5.0]
  def change
    add_reference :reading_levels, :teacher, index: true, foreign_key: true
  end
end
