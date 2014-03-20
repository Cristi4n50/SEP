class CreateTipopracticas < ActiveRecord::Migration
  def change
    create_table :tipopracticas do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
