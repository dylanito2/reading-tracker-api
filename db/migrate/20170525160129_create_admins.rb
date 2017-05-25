class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
