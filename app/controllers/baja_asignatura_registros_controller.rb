class BajaAsignaturaRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_baja_asignatura_registro, only: [:show, :edit, :update, :destroy]

  # GET /baja_asignatura_registros
  # GET /baja_asignatura_registros.json
  def index
    @baja_asignatura_registros = BajaAsignaturaRegistro.all
  end

  # GET /baja_asignatura_registros/1
  # GET /baja_asignatura_registros/1.json
  def show
  end

  # GET /baja_asignatura_registros/new
  def new
    @baja_asignatura_registro = BajaAsignaturaRegistro.new
  end

  # GET /baja_asignatura_registros/1/edit
  def edit
  end

  # POST /baja_asignatura_registros
  # POST /baja_asignatura_registros.json
  def create
    @baja_asignatura_registro = BajaAsignaturaRegistro.new(baja_asignatura_registro_params)

    respond_to do |format|
      if @baja_asignatura_registro.save
        format.html { redirect_to @baja_asignatura_registro, notice: 'Baja asignatura registro was successfully created.' }
        format.json { render :show, status: :created, location: @baja_asignatura_registro }
      else
        format.html { render :new }
        format.json { render json: @baja_asignatura_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baja_asignatura_registros/1
  # PATCH/PUT /baja_asignatura_registros/1.json
  def update
    respond_to do |format|
      if @baja_asignatura_registro.update(baja_asignatura_registro_params)
        format.html { redirect_to @baja_asignatura_registro, notice: 'Baja asignatura registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @baja_asignatura_registro }
      else
        format.html { render :edit }
        format.json { render json: @baja_asignatura_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baja_asignatura_registros/1
  # DELETE /baja_asignatura_registros/1.json
  def destroy
    @baja_asignatura_registro.destroy
    respond_to do |format|
      format.html { redirect_to baja_asignatura_registros_url, notice: 'Baja asignatura registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baja_asignatura_registro
      @baja_asignatura_registro = BajaAsignaturaRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baja_asignatura_registro_params
      params.require(:baja_asignatura_registro).permit(:asignatura_registro_id, :caso_id)
    end
end
