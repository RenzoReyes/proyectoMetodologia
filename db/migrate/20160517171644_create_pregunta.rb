class CreatePregunta < ActiveRecord::Migration
  def change
    create_table :pregunta do |t|
      t.string :tipo
      t.references :ramo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
