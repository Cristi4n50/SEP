class CreateEvaluaciones < ActiveRecord::Migration
  def change
    create_table :evaluaciones do |t|
      t.references :estudiante, index: true
      t.references :jefe, index: true
      t.boolean :relacionesinterpersona
      t.boolean :trabajoequipo
      t.boolean :solucionproblema
      t.boolean :cumplimiento
      t.boolean :organizacion
      t.boolean :transferenciaconocimiento
      t.boolean :mejoracontinua
      t.boolean :fortalecimientoocupacional
      t.boolean :oportunidadcalidad
      t.boolean :responsabilidadambiental
      t.boolean :administracionrecurso
      t.boolean :seguridadocupacionalindustrial
      t.boolean :documentacionetapaproductiva
      t.date :fecha_inicio
      t.date :fecha_fin
      t.date :fecha_evaluacion
      t.string :aspectos_positivos
      t.string :aspectos_positivos_ft
      t.string :aspectos_negativos
      t.string :aspectospositivofactortecnico
      t.string :aspectosnegativofactortecnico

      t.timestamps
    end
  end
end
