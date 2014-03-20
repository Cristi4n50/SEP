class CreateActividades < ActiveRecord::Migration
  def change
    create_table :actividades do |t|
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :descripcion
      t.string :objetivo
      t.string :nombre
      t.string :actividad1
      t.string :actividad2
      t.string :actividad3
      t.string :actividad4
      t.string :actividad5
      t.references :categoria, index: true
      t.references :actestado, index: true
      t.references :asignar_proy, index: true

      t.timestamps
    end
  end
end
