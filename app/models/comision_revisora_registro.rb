class ComisionRevisoraRegistro < ApplicationRecord
  belongs_to :caso
  validates :presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, presence:true

end
