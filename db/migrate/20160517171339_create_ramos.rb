class CreateRamos < ActiveRecord::Migration
  def change
    create_table :ramos do |t|
      t.string :nombre
      t.references :estudiante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
