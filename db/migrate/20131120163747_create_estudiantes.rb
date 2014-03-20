class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.boolean :genero
      t.string :email
      t.string :documento
      t.references :tipopractica, index: true
      t.references :ficha, index: true
      t.references :jefe, index: true
      t.references :tipodoc, index: true

      t.timestamps
    end
  end
end
