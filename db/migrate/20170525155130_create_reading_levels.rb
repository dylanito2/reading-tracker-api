class CreateReadingLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :reading_levels do |t|
      t.string :score
      t.references :conference 
      t.timestamps
    end
  end
end
