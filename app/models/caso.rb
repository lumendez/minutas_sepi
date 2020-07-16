class Caso < ApplicationRecord
  belongs_to :alumno
  belongs_to :tipo_caso
  has_many :director_tesis_registros, dependent: :destroy
  has_many :tema_tesis_registros, dependent: :destroy
  has_many :recursamiento_otra_unidad_registros, dependent: :destroy
  has_many :cambio_director_tesis_registros, dependent: :destroy
  has_many :cambio_tema_tesis_registros, dependent: :destroy
  has_many :cursar_unidad_aprendizaje_externa_registros, dependent: :destroy
  has_many :solicitud_programa_movilidad_registros, dependent: :destroy
  has_many :flexibilidad_academica_registros, dependent: :destroy
  has_many :comite_tutorial_registros, dependent: :destroy
  has_many :cambio_comite_tutorial_registros, dependent: :destroy
  has_many :comision_revisora_registros, dependent: :destroy
  has_many :cambio_comision_revisora_registros, dependent: :destroy
  has_many :revocacion_baja_registros, dependent: :destroy
  has_many :segundo_director_tesis_registros, dependent: :destroy
  has_many :solicitud_abierta_registros, dependent: :destroy
  has_many :examen_obtencion_grado_registros, dependent: :destroy
  has_many :baja_temporal_registros, dependent: :destroy
  has_many :ampliacion_semestre_registros, dependent: :destroy
  has_many :cambio_maestria_doctorado_registros, dependent: :destroy
  has_many :agregar_asignatura_registros, dependent: :destroy
  has_many :baja_asignatura_registros, dependent: :destroy

  accepts_nested_attributes_for :director_tesis_registros, :tema_tesis_registros,
  :recursamiento_otra_unidad_registros, :cambio_director_tesis_registros,
  :cambio_tema_tesis_registros, :cursar_unidad_aprendizaje_externa_registros,
  :solicitud_programa_movilidad_registros, :flexibilidad_academica_registros,
  :comite_tutorial_registros, :cambio_comite_tutorial_registros,
  :comision_revisora_registros, :cambio_comision_revisora_registros,
  :revocacion_baja_registros, :segundo_director_tesis_registros,
  :solicitud_abierta_registros, :examen_obtencion_grado_registros,
  :baja_temporal_registros, :ampliacion_semestre_registros,
  :cambio_maestria_doctorado_registros, :agregar_asignatura_registros,
  :baja_asignatura_registros

  def self.validacion_cuerpo_academico(caso_ids)
    casos = Caso.find(caso_ids)
    casos.each do |caso|
      caso.update_attributes(validacion_cuerpo_academico: true)
    end
  end

  def self.validacion_asuntos_escolares(caso_ids)
    casos = Caso.find(caso_ids)
    casos.each do |caso|
      caso.update_attributes(validacion_asuntos_escolares: true)
    end
  end

  def self.validacion_colegio_profesores(caso_ids)
    casos = Caso.find(caso_ids)
    casos.each do |caso|
      caso.update_attributes(validacion_colegio_profesores: true)
    end
  end

end
