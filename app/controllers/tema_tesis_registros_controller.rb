class TemaTesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tema_tesis_registro, only: [:show, :edit, :update, :destroy]

  # GET /tema_tesis_registros
  # GET /tema_tesis_registros.json
  def index
    @tema_tesis_registros = TemaTesisRegistro.all
    authorize @tema_tesis_registros
  end

  # GET /tema_tesis_registros/1
  # GET /tema_tesis_registros/1.json
  def show
    @tema_tesis_registro = authorize TemaTesisRegistro.find(params[:id])
  end

  # GET /tema_tesis_registros/new
  def new
    @tema_tesis_registro = TemaTesisRegistro.new
    authorize @tema_tesis_registro
  end

  # GET /tema_tesis_registros/1/edit
  def edit
    @tema_tesis_registro = authorize TemaTesisRegistro.find(params[:id])
  end

  # POST /tema_tesis_registros
  # POST /tema_tesis_registros.json
  def create
    @tema_tesis_registro = TemaTesisRegistro.new(tema_tesis_registro_params)
    authorize @tema_tesis_registro

    respond_to do |format|
      if @tema_tesis_registro.save
        format.html { redirect_to @tema_tesis_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @tema_tesis_registro }
      else  @tipo_casos = authorize TipoCasoRegistro.find(params[:id])
        format.html { render :new }
        format.json { render json: @tema_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tema_tesis_registros/1
  # PATCH/PUT /tema_tesis_registros/1.json
  def update
    @tema_tesis_registro = TemaTesisRegistro.find(params[:id])
    authorize @tema_tesis_registro

    respond_to do |format|
      if @tema_tesis_registro.update(tema_tesis_registro_params)
        format.html { redirect_to @tema_tesis_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @tema_tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @tema_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tema_tesis_registros/1
  # DELETE /tema_tesis_registros/1.json
  def destroy
    @tema_tesis_registro = TemaTesisRegistro.find(params[:id])
    authorize @tema_tesis_registro

    @tema_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to tema_tesis_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tema_tesis_registro
      @tema_tesis_registro = TemaTesisRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tema_tesis_registro_params
      params.require(:tema_tesis_registro).permit(:nombre)
    end
end
