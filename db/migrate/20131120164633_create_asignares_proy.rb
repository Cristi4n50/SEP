class CreateAsignaresProy < ActiveRecord::Migration
  def change
    create_table :asignares_proy do |t|
      t.string :nombreproyecto
      t.string :objetivo
      t.references :estudiante, index: true
      t.references :objsyproy, index: true

      t.timestamps
    end
  end
end
