class Novedad < ActiveRecord::Base
  belongs_to :user
  belongs_to :actestado
end
