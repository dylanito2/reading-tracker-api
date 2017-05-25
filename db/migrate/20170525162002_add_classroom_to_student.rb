class AddClassroomToStudent < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :classroom, index: true, foreign_key: true
  end
end
