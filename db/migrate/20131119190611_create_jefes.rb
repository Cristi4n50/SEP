class CreateJefes < ActiveRecord::Migration
  def change
    create_table :jefes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :cargo
      t.string :cedula
      t.string :telefono
      t.string :email
      t.references :empresa, index: true
      t.references :tipodoc, index: true

      t.timestamps
    end
  end
end
