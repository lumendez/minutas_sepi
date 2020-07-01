class FlexibilidadAcademicaRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_flexibilidad_academica_registro, only: [:show, :edit, :update, :destroy]

  # GET /flexibilidad_academica_registros
  # GET /flexibilidad_academica_registros.json
  def index
    @flexibilidad_academica_registros = FlexibilidadAcademicaRegistro.all
    authorize @flexibilidad_academica_registros
  end

  # GET /flexibilidad_academica_registros/1
  # GET /flexibilidad_academica_registros/1.json
  def show
    @flexibilidad_academica_registro = authorize FlexibilidadAcademicaRegistro.find(params[:id])
  end

  # GET /flexibilidad_academica_registros/new
  def new
    @flexibilidad_academica_registro = FlexibilidadAcademicaRegistro.new
    authorize @flexibilidad_academica_registro
  end

  # GET /flexibilidad_academica_registros/1/edit
  def edit
    @flexibilidad_academica_registro = authorize FlexibilidadAcademicaRegistro.find(params[:id])
  end

  # POST /flexibilidad_academica_registros
  # POST /flexibilidad_academica_registros.json
  def create
    @flexibilidad_academica_registro = FlexibilidadAcademicaRegistro.new(flexibilidad_academica_registro_params)
    authorize @flexibilidad_academica_registro

    respond_to do |format|
      if @flexibilidad_academica_registro.save
        format.html { redirect_to @flexibilidad_academica_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @flexibilidad_academica_registro }
      else
        format.html { render :new }
        format.json { render json: @flexibilidad_academica_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flexibilidad_academica_registros/1
  # PATCH/PUT /flexibilidad_academica_registros/1.json
  def update
    @flexibilidad_academica_registro = FlexibilidadAcademicaRegistro.find(params[:id])
    authorize @flexibilidad_academica_registro

    respond_to do |format|
      if @flexibilidad_academica_registro.update(flexibilidad_academica_registro_params)
        format.html { redirect_to @flexibilidad_academica_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @flexibilidad_academica_registro }
      else
        format.html { render :edit }
        format.json { render json: @flexibilidad_academica_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flexibilidad_academica_registros/1
  # DELETE /flexibilidad_academica_registros/1.json
  def destroy
    @flexibilidad_academica_registro = FlexibilidadAcademicaRegistro.find(params[:id])
    authorize @flexibilidad_academica_registro
    
    @flexibilidad_academica_registro.destroy
    respond_to do |format|
      format.html { redirect_to flexibilidad_academica_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flexibilidad_academica_registro
      @flexibilidad_academica_registro = FlexibilidadAcademicaRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flexibilidad_academica_registro_params
      params.require(:flexibilidad_academica_registro).permit(:nombre, :caso_id)
    end
end
