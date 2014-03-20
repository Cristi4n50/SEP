class Tipopractica < ActiveRecord::Base
  has_many :estudiantes
  def self.search(search)
    where("nombre like '%#{search}%' or descripcion like '%#{search}%'")
  end
end
