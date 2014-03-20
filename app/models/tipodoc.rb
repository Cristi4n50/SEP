class Tipodoc < ActiveRecord::Base
  has_many :estudiantes
  belongs_to :jefe
end
