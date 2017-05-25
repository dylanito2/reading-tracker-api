class AddTeacherToComment< ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :teacher, index: true, foreign_key: true
  end
end
