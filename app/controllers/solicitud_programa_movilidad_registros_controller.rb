class SolicitudProgramaMovilidadRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_solicitud_programa_movilidad_registro, only: [:show, :edit, :update, :destroy]

  # GET /solicitud_programa_movilidad_registros
  # GET /solicitud_programa_movilidad_registros.json
  def index
    @solicitud_programa_movilidad_registros = SolicitudProgramaMovilidadRegistro.all
  end

  # GET /solicitud_programa_movilidad_registros/1
  # GET /solicitud_programa_movilidad_registros/1.json
  def show
  end

  # GET /solicitud_programa_movilidad_registros/new
  def new
    @solicitud_programa_movilidad_registro = SolicitudProgramaMovilidadRegistro.new
  end

  # GET /solicitud_programa_movilidad_registros/1/edit
  def edit
  end

  # POST /solicitud_programa_movilidad_registros
  # POST /solicitud_programa_movilidad_registros.json
  def create
    @solicitud_programa_movilidad_registro = SolicitudProgramaMovilidadRegistro.new(solicitud_programa_movilidad_registro_params)

    respond_to do |format|
      if @solicitud_programa_movilidad_registro.save
        format.html { redirect_to @solicitud_programa_movilidad_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @solicitud_programa_movilidad_registro }
      else
        format.html { render :new }
        format.json { render json: @solicitud_programa_movilidad_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitud_programa_movilidad_registros/1
  # PATCH/PUT /solicitud_programa_movilidad_registros/1.json
  def update
    respond_to do |format|
      if @solicitud_programa_movilidad_registro.update(solicitud_programa_movilidad_registro_params)
        format.html { redirect_to @solicitud_programa_movilidad_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @solicitud_programa_movilidad_registro }
      else
        format.html { render :edit }
        format.json { render json: @solicitud_programa_movilidad_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitud_programa_movilidad_registros/1
  # DELETE /solicitud_programa_movilidad_registros/1.json
  def destroy
    @solicitud_programa_movilidad_registro.destroy
    respond_to do |format|
      format.html { redirect_to solicitud_programa_movilidad_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_programa_movilidad_registro
      @solicitud_programa_movilidad_registro = SolicitudProgramaMovilidadRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def solicitud_programa_movilidad_registro_params
      params.require(:solicitud_programa_movilidad_registro).permit(:nombre, :nombre_institucion, :caso_id)
    end
end
