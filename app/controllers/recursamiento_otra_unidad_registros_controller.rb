class RecursamientoOtraUnidadRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recursamiento_otra_unidad_registro, only: [:show, :edit, :update, :destroy]

  # GET /recursamiento_otra_unidad_registros
  # GET /recursamiento_otra_unidad_registros.json
  def index
    @recursamiento_otra_unidad_registros = RecursamientoOtraUnidadRegistro.all
  end

  # GET /recursamiento_otra_unidad_registros/1
  # GET /recursamiento_otra_unidad_registros/1.json
  def show
  end

  # GET /recursamiento_otra_unidad_registros/new
  def new
    @recursamiento_otra_unidad_registro = RecursamientoOtraUnidadRegistro.new
  end

  # GET /recursamiento_otra_unidad_registros/1/edit
  def edit
  end

  # POST /recursamiento_otra_unidad_registros
  # POST /recursamiento_otra_unidad_registros.json
  def create
    @recursamiento_otra_unidad_registro = RecursamientoOtraUnidadRegistro.new(recursamiento_otra_unidad_registro_params)

    respond_to do |format|
      if @recursamiento_otra_unidad_registro.save
        format.html { redirect_to @recursamiento_otra_unidad_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @recursamiento_otra_unidad_registro }
      else
        format.html { render :new }
        format.json { render json: @recursamiento_otra_unidad_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recursamiento_otra_unidad_registros/1
  # PATCH/PUT /recursamiento_otra_unidad_registros/1.json
  def update
    respond_to do |format|
      if @recursamiento_otra_unidad_registro.update(recursamiento_otra_unidad_registro_params)
        format.html { redirect_to @recursamiento_otra_unidad_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @recursamiento_otra_unidad_registro }
      else
        format.html { render :edit }
        format.json { render json: @recursamiento_otra_unidad_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recursamiento_otra_unidad_registros/1
  # DELETE /recursamiento_otra_unidad_registros/1.json
  def destroy
    @recursamiento_otra_unidad_registro.destroy
    respond_to do |format|
      format.html { redirect_to recursamiento_otra_unidad_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recursamiento_otra_unidad_registro
      @recursamiento_otra_unidad_registro = RecursamientoOtraUnidadRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recursamiento_otra_unidad_registro_params
      params.require(:recursamiento_otra_unidad_registro).permit(:nombre, :clave, :creditos, :nombre_unidad_academica, :caso_id)
    end
end
