class ComiteTutorialRegistro < ApplicationRecord
  belongs_to :caso
  validates :primer_tutor, :segundo_tutor, :tercer_tutor, :cuarto_tutor, :quinto_tutor, presence:true

end
