class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :conferences do |t|
      t.references :teacher
      t.references :student
      t.timestamps
    end
  end
end
