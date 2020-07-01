class SolicitudAbiertaRegistro < ApplicationRecord
  belongs_to :caso
  validates :asunto, :motivacion, presence: true
end
