class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :street_address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
