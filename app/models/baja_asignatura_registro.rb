class BajaAsignaturaRegistro < ApplicationRecord
  belongs_to :asignatura_registro
  belongs_to :caso
end
