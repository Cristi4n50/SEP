class CreateTipoFactores < ActiveRecord::Migration
  def change
    create_table :tipo_factores do |t|
      t.string :nombre
      t.string :sigla

      t.timestamps
    end
  end
end
