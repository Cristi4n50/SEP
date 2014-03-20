class CreateTitulaciones < ActiveRecord::Migration
  def change
    create_table :titulaciones do |t|
      t.string :descripcion
      t.string :sigla

      t.timestamps
    end
  end
end
