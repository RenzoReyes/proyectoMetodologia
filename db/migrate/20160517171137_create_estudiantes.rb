class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :password
      t.string :email

      t.timestamps null: false
    end
  end
end
