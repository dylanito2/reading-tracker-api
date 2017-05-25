class AddStudentToComment< ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :student, index: true, foreign_key: true
  end
end
