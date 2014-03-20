class CreateActestados < ActiveRecord::Migration
  def change
    create_table :actestados do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
