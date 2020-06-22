class ProgramaPosgradoRegistro < ApplicationRecord
  has_many :asignatura_registros
  has_many :alumnos
end
