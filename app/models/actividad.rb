class Actividad < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :objsyproy
  belongs_to :asignar_proy
  belongs_to :actestado
  belongs_to :estudiante
  has_many :bitacoras
  def self.search(search)
    where("descripcion like '%#{search}%'")
  end
end
