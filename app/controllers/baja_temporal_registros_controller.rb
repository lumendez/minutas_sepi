class BajaTemporalRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_baja_temporal_registro, only: [:show, :edit, :update, :destroy]

  # GET /baja_temporal_registros
  # GET /baja_temporal_registros.json
  def index
    @baja_temporal_registros = BajaTemporalRegistro.all
  end

  # GET /baja_temporal_registros/1
  # GET /baja_temporal_registros/1.json
  def show
  end

  # GET /baja_temporal_registros/new
  def new
    @baja_temporal_registro = BajaTemporalRegistro.new
  end

  # GET /baja_temporal_registros/1/edit
  def edit
  end

  # POST /baja_temporal_registros
  # POST /baja_temporal_registros.json
  def create
    @baja_temporal_registro = BajaTemporalRegistro.new(baja_temporal_registro_params)

    respond_to do |format|
      if @baja_temporal_registro.save
        format.html { redirect_to @baja_temporal_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @baja_temporal_registro }
      else
        format.html { render :new }
        format.json { render json: @baja_temporal_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baja_temporal_registros/1
  # PATCH/PUT /baja_temporal_registros/1.json
  def update
    respond_to do |format|
      if @baja_temporal_registro.update(baja_temporal_registro_params)
        format.html { redirect_to @baja_temporal_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @baja_temporal_registro }
      else
        format.html { render :edit }
        format.json { render json: @baja_temporal_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baja_temporal_registros/1
  # DELETE /baja_temporal_registros/1.json
  def destroy
    @baja_temporal_registro.destroy
    respond_to do |format|
      format.html { redirect_to baja_temporal_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baja_temporal_registro
      @baja_temporal_registro = BajaTemporalRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baja_temporal_registro_params
      params.require(:baja_temporal_registro).permit(:motivacion, :caso_id)
    end
end
