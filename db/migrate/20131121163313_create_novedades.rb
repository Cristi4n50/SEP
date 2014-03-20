class CreateNovedades < ActiveRecord::Migration
  def change
    create_table :novedades do |t|
      t.date :fecha_ocurrencia
      t.string :descripcion
      t.string :implicados
      t.references :user, index: true
      t.references :actestado, index: true

      t.timestamps
    end
  end
end
