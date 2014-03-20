class Factor < ActiveRecord::Base
  belongs_to :area
  belongs_to :tipo_factor
  has_many :detalle_evaluaciones
  def self.search(search)
    where("nombre like '%#{search}%' or descripcion like '%#{search}%'")
  end
end
