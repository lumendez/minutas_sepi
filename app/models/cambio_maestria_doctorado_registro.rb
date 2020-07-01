class CambioMaestriaDoctoradoRegistro < ApplicationRecord
  belongs_to :caso
  validates :motivacion, presence:true, length: { minimum: 20 }
end
