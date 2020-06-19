class Caso < ApplicationRecord
  belongs_to :alumno
  belongs_to :tipo_caso
  has_many :director_tesis_registros, dependent: :destroy
  has_many :tema_tesis_registros, dependent: :destroy
  has_many :recursamiento_otra_unidad_registros, dependent: :destroy
  has_many :cambio_director_tesis_registros, dependent: :destroy
  has_many :cambio_tema_tesis_registros, dependent: :destroy
  has_many :cursar_unidad_aprendizaje_externa_registros, dependent: :destroy

  accepts_nested_attributes_for :director_tesis_registros, :tema_tesis_registros,
  :recursamiento_otra_unidad_registros, :cambio_director_tesis_registros,
  :cambio_tema_tesis_registros, :cursar_unidad_aprendizaje_externa_registros
end
