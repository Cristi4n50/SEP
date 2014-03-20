class CreateFactores < ActiveRecord::Migration
  def change
    create_table :factores do |t|
      t.references :area, index: true
      t.references :tipo_factor, index: true
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
