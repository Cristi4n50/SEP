class Bitacora < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :categoria
  belongs_to :actestado
  belongs_to :asignar_proy
  belongs_to :actividad
  belongs_to :asignar_proy
end
