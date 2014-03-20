class TipoFactor < ActiveRecord::Base
  has_many :factores
  def self.search(search)
    where("nombre like '%#{search}%' or sigla like '%#{search}%'")
  end
end
