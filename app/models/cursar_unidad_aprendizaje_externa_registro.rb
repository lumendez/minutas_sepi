class CursarUnidadAprendizajeExternaRegistro < ApplicationRecord
  belongs_to :caso
  validates :nombre, :clave, :creditos, :unidad_academica, presence:true

end
