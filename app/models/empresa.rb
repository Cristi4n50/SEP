class Empresa < ActiveRecord::Base
  has_many :jefes
  def self.search(search)
    where("nombre like '%#{search}%' or nit like '%#{search}%'")
  end
end
