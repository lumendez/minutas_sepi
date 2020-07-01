class SolicitudAbiertaRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_solicitud_abierta_registro, only: [:show, :edit, :update, :destroy]

  # GET /solicitud_abierta_registros
  # GET /solicitud_abierta_registros.json
  def index
    @solicitud_abierta_registros = SolicitudAbiertaRegistro.all
    authorize @solicitud_abierta_registros
  end

  # GET /solicitud_abierta_registros/1
  # GET /solicitud_abierta_registros/1.json
  def show
    @solicitud_abierta_registro = authorize SolicitudAbiertaRegistro.find(params[:id])
  end

  # GET /solicitud_abierta_registros/new
  def new
    @solicitud_abierta_registro = SolicitudAbiertaRegistro.new
    authorize @solicitud_abierta_registro
  end

  # GET /solicitud_abierta_registros/1/edit
  def edit
    @solicitud_abierta_registro = authorize SolicitudAbiertaRegistro.find(params[:id])
  end

  # POST /solicitud_abierta_registros
  # POST /solicitud_abierta_registros.json
  def create
    @solicitud_abierta_registro = SolicitudAbiertaRegistro.new(solicitud_abierta_registro_params)
    authorize @solicitud_abierta_registro

    respond_to do |format|
      if @solicitud_abierta_registro.save
        format.html { redirect_to @solicitud_abierta_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @solicitud_abierta_registro }
      else
        format.html { render :new }
        format.json { render json: @solicitud_abierta_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitud_abierta_registros/1
  # PATCH/PUT /solicitud_abierta_registros/1.json
  def update
    @solicitud_abierta_registro = SolicitudAbiertaRegistro.find(params[:id])
    authorize @solicitud_abierta_registro

    respond_to do |format|
      if @solicitud_abierta_registro.update(solicitud_abierta_registro_params)
        format.html { redirect_to @solicitud_abierta_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @solicitud_abierta_registro }
      else
        format.html { render :edit }
        format.json { render json: @solicitud_abierta_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitud_abierta_registros/1
  # DELETE /solicitud_abierta_registros/1.json
  def destroy
    @solicitud_abierta_registro = SolicitudAbiertaRegistro.find(params[:id])
    authorize @solicitud_abierta_registro
    
    @solicitud_abierta_registro.destroy
    respond_to do |format|
      format.html { redirect_to solicitud_abierta_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_abierta_registro
      @solicitud_abierta_registro = SolicitudAbiertaRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def solicitud_abierta_registro_params
      params.require(:solicitud_abierta_registro).permit(:asunto, :motivacion, :caso_id)
    end
end
