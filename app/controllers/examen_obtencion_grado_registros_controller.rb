class ExamenObtencionGradoRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_examen_obtencion_grado_registro, only: [:show, :edit, :update, :destroy]

  # GET /examen_obtencion_grado_registros
  # GET /examen_obtencion_grado_registros.json
  def index
    @examen_obtencion_grado_registros = ExamenObtencionGradoRegistro.all
  end

  # GET /examen_obtencion_grado_registros/1
  # GET /examen_obtencion_grado_registros/1.json
  def show
  end

  # GET /examen_obtencion_grado_registros/new
  def new
    @examen_obtencion_grado_registro = ExamenObtencionGradoRegistro.new
  end

  # GET /examen_obtencion_grado_registros/1/edit
  def edit
  end

  # POST /examen_obtencion_grado_registros
  # POST /examen_obtencion_grado_registros.json
  def create
    @examen_obtencion_grado_registro = ExamenObtencionGradoRegistro.new(examen_obtencion_grado_registro_params)

    respond_to do |format|
      if @examen_obtencion_grado_registro.save
        format.html { redirect_to @examen_obtencion_grado_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @examen_obtencion_grado_registro }
      else
        format.html { render :new }
        format.json { render json: @examen_obtencion_grado_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examen_obtencion_grado_registros/1
  # PATCH/PUT /examen_obtencion_grado_registros/1.json
  def update
    respond_to do |format|
      if @examen_obtencion_grado_registro.update(examen_obtencion_grado_registro_params)
        format.html { redirect_to @examen_obtencion_grado_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @examen_obtencion_grado_registro }
      else
        format.html { render :edit }
        format.json { render json: @examen_obtencion_grado_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examen_obtencion_grado_registros/1
  # DELETE /examen_obtencion_grado_registros/1.json
  def destroy
    @examen_obtencion_grado_registro.destroy
    respond_to do |format|
      format.html { redirect_to examen_obtencion_grado_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examen_obtencion_grado_registro
      @examen_obtencion_grado_registro = ExamenObtencionGradoRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def examen_obtencion_grado_registro_params
      params.require(:examen_obtencion_grado_registro).permit(:motivacion, :caso_id)
    end
end
