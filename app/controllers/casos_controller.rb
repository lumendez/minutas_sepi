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
    @caso = alumno.casos.build
    @caso.director_tesis_registros.build
    @caso.tema_tesis_registros.build
    @caso.recursamiento_otra_unidad_registros.build
    @caso.cambio_director_tesis_registros.build
    @caso.cambio_tema_tesis_registros.build
    @caso.cursar_unidad_aprendizaje_externa_registros.build
    @caso.solicitud_programa_movilidad_registros.build
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
      params.require(:caso).permit(:alumno_id, :tipo_caso_id,
         director_tesis_registros_attributes: [:id, :nombre, :caso_id],
         tema_tesis_registros_attributes: [:id, :nombre, :caso_id],
         recursamiento_otra_unidad_registros_attributes: [:id, :nombre, :clave, :creditos, :nombre_unidad_academica, :caso_id],
         cambio_director_tesis_registros_attributes: [:id, :nombre, :nombre_segundo_director, :caso_id],
         cambio_tema_tesis_registros_attributes: [:id, :nombre, :caso_id],
         cursar_unidad_aprendizaje_externa_registros_attributes: [:id, :nombre, :clave, :creditos, :unidad_academica, :caso_id],
         solicitud_programa_movilidad_registros_attributes: [:id, :nombre, :nombre_institucion, :caso_id])
    end
end
