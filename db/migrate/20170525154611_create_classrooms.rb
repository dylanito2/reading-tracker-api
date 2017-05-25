class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.string :room_number
      t.integer :grade

      t.timestamps
    end
  end
end
