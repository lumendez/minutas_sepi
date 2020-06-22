class CasosController < ApplicationController
  before_action :set_caso, only: [:show, :edit, :update, :destroy]

  # GET /casos
  # GET /casos.json
  def index
    @casos = Caso.all
  end

  # GET /casos/1
  # GET /casos/1.json
  def show
  end

  # GET /casos/new
  def new
    alumno = Alumno.find_by(user_id: current_user.id)
    @alumno_actual = alumno
    @caso = alumno.casos.build
    @caso.director_tesis_registros.build
    @caso.tema_tesis_registros.build
    @caso.recursamiento_otra_unidad_registros.build
    @caso.cambio_director_tesis_registros.build
    @caso.cambio_tema_tesis_registros.build
    @caso.cursar_unidad_aprendizaje_externa_registros.build
    @caso.solicitud_programa_movilidad_registros.build
    @caso.flexibilidad_academica_registros.build
    @caso.comite_tutorial_registros.build
    @caso.cambio_comite_tutorial_registros.build
    @caso.comision_revisora_registros.build
    @caso.cambio_comision_revisora_registros.build
    @caso.revocacion_baja_registros.build
    @caso.segundo_director_tesis_registros.build
    @caso.solicitud_abierta_registros.build
    @caso.examen_obtencion_grado_registros.build
    @caso.baja_temporal_registros.build
    @caso.ampliacion_semestre_registros.build
    @caso.cambio_maestria_doctorado_registros.build
    @caso.agregar_asignatura_registros.build
    @caso.baja_asignatura_registros.build
  end

  # GET /casos/1/edit
  def edit
  end

  # POST /casos
  # POST /casos.json
  def create
    alumno = Alumno.find_by(user_id: current_user.id)
    @caso = alumno.casos.build(caso_params)

    respond_to do |format|
      if @caso.save
        format.html { redirect_to @caso, notice: 'Caso was successfully created.' }
        format.json { render :show, status: :created, location: @caso }
      else
        format.html { render :new }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casos/1
  # PATCH/PUT /casos/1.json
  def update
    respond_to do |format|
      if @caso.update(caso_params)
        format.html { redirect_to @caso, notice: 'Caso was successfully updated.' }
        format.json { render :show, status: :ok, location: @caso }
      else
        format.html { render :edit }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casos/1
  # DELETE /casos/1.json
  def destroy
    @caso.destroy
    respond_to do |format|
      format.html { redirect_to casos_url, notice: 'Caso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caso
      @caso = Caso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def caso_params
      params.require(:caso).permit(:alumno_id, :tipo_caso_id, :validacion_cuerpo_academico, :validacion_comision,
         director_tesis_registros_attributes: [:id, :nombre, :nombre_segundo_director, :caso_id],
         tema_tesis_registros_attributes: [:id, :nombre, :caso_id],
         recursamiento_otra_unidad_registros_attributes: [:id, :nombre, :clave, :creditos, :nombre_unidad_academica, :caso_id],
         cambio_director_tesis_registros_attributes: [:id, :nombre, :nombre_segundo_director, :caso_id],
         cambio_tema_tesis_registros_attributes: [:id, :nombre, :caso_id],
         cursar_unidad_aprendizaje_externa_registros_attributes: [:id, :nombre, :clave, :creditos, :unidad_academica, :caso_id],
         solicitud_programa_movilidad_registros_attributes: [:id, :nombre, :nombre_institucion, :caso_id],
         flexibilidad_academica_registros_attributes: [:id, :nombre, :caso_id],
         comite_tutorial_registros_attributes: [:id, :primer_tutor, :segundo_tutor, :tercer_tutor, :cuarto_tutor, :quinto_tutor, :caso_id],
         cambio_comite_tutorial_registros_attributes: [:id, :primer_tutor, :segundo_tutor, :tercer_tutor, :cuarto_tutor, :quinto_tutor, :caso_id],
         comision_revisora_registros_attributes: [:id, :presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, :caso_id],
         cambio_comision_revisora_registros_attributes: [:id, :presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, :caso_id],
         revocacion_baja_registros_attributes: [:id, :motivacion, :caso_id],
         segundo_director_tesis_registros_attributes: [:id, :nombre, :caso_id],
         solicitud_abierta_registros_attributes: [:id, :asunto, :motivacion, :caso_id],
         examen_obtencion_grado_registros_attributes: [:id, :motivacion, :caso_id],
         baja_temporal_registros_attributes: [:id, :motivacion, :caso_id],
         ampliacion_semestre_registros_attributes: [:id, :motivacion, :caso_id],
         cambio_maestria_doctorado_registros_attributes: [:id, :motivacion, :caso_id],
         agregar_asignatura_registros_attributes: [:id, :asignatura_registro_id, :caso_id],
         baja_asignatura_registros_attributes: [:id, :asignatura_registro_id, :caso_id])
    end
end
