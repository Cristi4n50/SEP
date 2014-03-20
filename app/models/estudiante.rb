class Estudiante < ActiveRecord::Base
  belongs_to :tipopractica
  belongs_to :ficha
  belongs_to :jefe
  belongs_to :tipodoc
  has_many :actividades
  has_many :asignares_proy
  has_many :evaluaciones
  has_many :bitacoras

  def self.search(search)
    where("nombre1 like '%#{search}%' or nombre2 like '%#{search}%'")
  end
end
