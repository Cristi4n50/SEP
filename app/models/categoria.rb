class Categoria < ActiveRecord::Base
  has_many :actividades
  def self.search(search)
    where("nombre like '%#{search}%'")
  end
end
