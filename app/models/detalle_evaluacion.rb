class DetalleEvaluacion < ActiveRecord::Base
  belongs_to :evaluacion
  belongs_to :factor
end
