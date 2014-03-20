class Ficha < ActiveRecord::Base
  belongs_to :programa
  has_many :estudiantes
end
