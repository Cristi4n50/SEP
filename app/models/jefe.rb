class Jefe < ActiveRecord::Base
  belongs_to :empresa
  has_many :estudiantes
  has_many :evaluaciones
  has_many :tipodocs
  def self.search(search)
   where("nombres like '%#{search}%' or apellidos like '%#{search}%'")
  end
end
