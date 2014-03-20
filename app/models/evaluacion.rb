class Evaluacion < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :jefe


  has_many :detalle_evaluaciones
  def self.search(search)
    where("aspectospositivofactortecnico like '%#{search}%'")
  end
end
