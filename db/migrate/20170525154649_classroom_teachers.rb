class ClassroomTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :classroom_teachers do |t|
      t.references :classroom
      t.references :teacher
      t.timestamps
    end
  end
end
