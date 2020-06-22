class Alumno < ApplicationRecord
  belongs_to :user
  has_many :casos, dependent: :destroy
  belongs_to :programa_posgrado_registro
end
