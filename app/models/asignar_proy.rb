class AsignarProy < ActiveRecord::Base
  belongs_to :estudiante
  has_many :actividades
  has_many :bitacoras
  def self.search(search)
    where("nombreproyecto like '%#{search}%'")
  end
end
