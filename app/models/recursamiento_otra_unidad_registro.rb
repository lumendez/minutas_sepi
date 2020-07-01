class RecursamientoOtraUnidadRegistro < ApplicationRecord
  belongs_to :caso
  validates :nombre, :clave, :creditos, :nombre_unidad_academica, presence: true
end
