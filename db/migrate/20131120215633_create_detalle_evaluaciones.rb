class CreateDetalleEvaluaciones < ActiveRecord::Migration
  def change
    create_table :detalle_evaluaciones do |t|
      t.references :evaluacion, index: true
      t.references :factor, index: true
      t.float :nota
      t.string :observaciones

      t.timestamps
    end
  end
end
