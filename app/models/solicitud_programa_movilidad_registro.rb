class SolicitudProgramaMovilidadRegistro < ApplicationRecord
  belongs_to :caso
  validates :nombre,:nombre_institucion, presence: true
end
