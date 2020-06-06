class Caso < ApplicationRecord
  belongs_to :user
  belongs_to :tipo_caso
  has_many :director_tesis_registros, dependent: :destroy

  accepts_nested_attributes_for :director_tesis_registros
end
