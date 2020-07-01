class FlexibilidadAcademicaRegistro < ApplicationRecord
  belongs_to :caso
  validates :nombre, presence:true, length: { minimum: 20 }
end
