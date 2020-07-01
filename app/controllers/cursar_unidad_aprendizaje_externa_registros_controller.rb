class CursarUnidadAprendizajeExternaRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cursar_unidad_aprendizaje_externa_registro, only: [:show, :edit, :update, :destroy]

  # GET /cursar_unidad_aprendizaje_externa_registros
  # GET /cursar_unidad_aprendizaje_externa_registros.json
  def index
    @cursar_unidad_aprendizaje_externa_registros = CursarUnidadAprendizajeExternaRegistro.all
  end

  # GET /cursar_unidad_aprendizaje_externa_registros/1
  # GET /cursar_unidad_aprendizaje_externa_registros/1.json
  def show
  end

  # GET /cursar_unidad_aprendizaje_externa_registros/new
  def new
    @cursar_unidad_aprendizaje_externa_registro = CursarUnidadAprendizajeExternaRegistro.new
  end

  # GET /cursar_unidad_aprendizaje_externa_registros/1/edit
  def edit
  end

  # POST /cursar_unidad_aprendizaje_externa_registros
  # POST /cursar_unidad_aprendizaje_externa_registros.json
  def create
    @cursar_unidad_aprendizaje_externa_registro = CursarUnidadAprendizajeExternaRegistro.new(cursar_unidad_aprendizaje_externa_registro_params)

    respond_to do |format|
      if @cursar_unidad_aprendizaje_externa_registro.save
        format.html { redirect_to @cursar_unidad_aprendizaje_externa_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @cursar_unidad_aprendizaje_externa_registro }
      else
        format.html { render :new }
        format.json { render json: @cursar_unidad_aprendizaje_externa_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursar_unidad_aprendizaje_externa_registros/1
  # PATCH/PUT /cursar_unidad_aprendizaje_externa_registros/1.json
  def update
    respond_to do |format|
      if @cursar_unidad_aprendizaje_externa_registro.update(cursar_unidad_aprendizaje_externa_registro_params)
        format.html { redirect_to @cursar_unidad_aprendizaje_externa_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @cursar_unidad_aprendizaje_externa_registro }
      else
        format.html { render :edit }
        format.json { render json: @cursar_unidad_aprendizaje_externa_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursar_unidad_aprendizaje_externa_registros/1
  # DELETE /cursar_unidad_aprendizaje_externa_registros/1.json
  def destroy
    @cursar_unidad_aprendizaje_externa_registro.destroy
    respond_to do |format|
      format.html { redirect_to cursar_unidad_aprendizaje_externa_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cursar_unidad_aprendizaje_externa_registro
      @cursar_unidad_aprendizaje_externa_registro = CursarUnidadAprendizajeExternaRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cursar_unidad_aprendizaje_externa_registro_params
      params.require(:cursar_unidad_aprendizaje_externa_registro).permit(:nombre, :clave, :creditos, :unidad_academica, :caso_id)
    end
end
