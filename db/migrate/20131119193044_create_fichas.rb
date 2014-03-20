class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.string :numero
      t.date :fecha_inicio_practicas
      t.date :fecha_fin_practicas
      t.references :programa, index: true

      t.timestamps
    end
  end
end
