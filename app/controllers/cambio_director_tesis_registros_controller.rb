class CambioDirectorTesisRegistrosController < ApplicationController
  before_action :set_cambio_director_tesis_registro, only: [:show, :edit, :update, :destroy]

  # GET /cambio_director_tesis_registros
  # GET /cambio_director_tesis_registros.json
  def index
    @cambio_director_tesis_registros = CambioDirectorTesisRegistro.all
  end

  # GET /cambio_director_tesis_registros/1
  # GET /cambio_director_tesis_registros/1.json
  def show
  end

  # GET /cambio_director_tesis_registros/new
  def new
    @cambio_director_tesis_registro = CambioDirectorTesisRegistro.new
  end

  # GET /cambio_director_tesis_registros/1/edit
  def edit
  end

  # POST /cambio_director_tesis_registros
  # POST /cambio_director_tesis_registros.json
  def create
    @cambio_director_tesis_registro = CambioDirectorTesisRegistro.new(cambio_director_tesis_registro_params)

    respond_to do |format|
      if @cambio_director_tesis_registro.save
        format.html { redirect_to @cambio_director_tesis_registro, notice: 'Cambio director tesis registro was successfully created.' }
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
    respond_to do |format|
      if @cambio_director_tesis_registro.update(cambio_director_tesis_registro_params)
        format.html { redirect_to @cambio_director_tesis_registro, notice: 'Cambio director tesis registro was successfully updated.' }
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
    @cambio_director_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to cambio_director_tesis_registros_url, notice: 'Cambio director tesis registro was successfully destroyed.' }
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
