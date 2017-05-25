class AddStudentToReadingLevel< ActiveRecord::Migration[5.0]
  def change
    add_reference :reading_levels, :student, index: true, foreign_key: true
  end
end
