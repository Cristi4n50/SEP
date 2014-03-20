class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :nombre
      t.string :version
      t.string :codigo
      t.references :centro, index: true
      t.references :titulacion, index: true

      t.timestamps
    end
  end
end
