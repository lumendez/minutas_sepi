class CambioDirectorTesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cambio_director_tesis_registro, only: [:show, :edit, :update, :destroy]

  # GET /cambio_director_tesis_registros
  # GET /cambio_director_tesis_registros.json
  def index
    @cambio_director_tesis_registros = CambioDirectorTesisRegistro.all
    authorize @cambio_director_tesis_registros
  end

  # GET /cambio_director_tesis_registros/1
  # GET /cambio_director_tesis_registros/1.json
  def show
    @cambio_director_tesis_registro = authorize CambioDirectorTesisRegistro.find(params[:id])
  end

  # GET /cambio_director_tesis_registros/new
  def new
    @cambio_director_tesis_registro = CambioDirectorTesisRegistro.new
    authorize @cambio_director_tesis_registro
  end

  # GET /cambio_director_tesis_registros/1/edit
  def edit
    @cambio_director_tesis_registro = authorize CambioDirectorTesisRegistro.find(params[:id])
  end

  # POST /cambio_director_tesis_registros
  # POST /cambio_director_tesis_registros.json
  def create
    @cambio_director_tesis_registro = CambioDirectorTesisRegistro.new(cambio_director_tesis_registro_params)
    authorize @cambio_director_tesis_registro

    respond_to do |format|
      if @cambio_director_tesis_registro.save
        format.html { redirect_to @cambio_director_tesis_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @cambio_director_tesis_registro }
      else
        format.html { render :new }
        format.json { render json: @cambio_director_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cambio_director_tesis_registros/1
  # PATCH/PUT /cambio_director_tesis_registros/1.json
  def update
    @cambio_director_tesis_registro = CambioDirectorTesisRegistro.find(params[:id])
    authorize @cambio_director_tesis_registro

    respond_to do |format|
      if @cambio_director_tesis_registro.update(cambio_director_tesis_registro_params)
        format.html { redirect_to @cambio_director_tesis_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @cambio_director_tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @cambio_director_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambio_director_tesis_registros/1
  # DELETE /cambio_director_tesis_registros/1.json
  def destroy
    @cambio_director_tesis_registro = CambioDirectorTesisRegistro.find(params[:id])
    authorize @cambio_director_tesis_registro
    
    @cambio_director_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to cambio_director_tesis_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambio_director_tesis_registro
      @cambio_director_tesis_registro = CambioDirectorTesisRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cambio_director_tesis_registro_params
      params.require(:cambio_director_tesis_registro).permit(:nombre, :nombre_segundo_director, :caso_id)
    end
end
