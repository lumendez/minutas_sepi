class SegundoDirectorTesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_segundo_director_tesis_registro, only: [:show, :edit, :update, :destroy]

  # GET /segundo_director_tesis_registros
  # GET /segundo_director_tesis_registros.json
  def index
    @segundo_director_tesis_registros = SegundoDirectorTesisRegistro.all
    authorize @segundo_director_tesis_registros
  end

  # GET /segundo_director_tesis_registros/1
  # GET /segundo_director_tesis_registros/1.json
  def show
    @segundo_director_tesis_registro = authorize SegundoDirectorTesisRegistro.find(params[:id])
  end

  # GET /segundo_director_tesis_registros/new
  def new
    @segundo_director_tesis_registro = SegundoDirectorTesisRegistro.new
    authorize @segundo_director_tesis_registro
  end

  # GET /segundo_director_tesis_registros/1/edit
  def edit
    @segundo_director_tesis_registro = authorize SegundoDirectorTesisRegistro.find(params[:id])
  end

  # POST /segundo_director_tesis_registros
  # POST /segundo_director_tesis_registros.json
  def create
    @segundo_director_tesis_registro = SegundoDirectorTesisRegistro.new(segundo_director_tesis_registro_params)
    authorize @segundo_director_tesis_registro

    respond_to do |format|
      if @segundo_director_tesis_registro.save
        format.html { redirect_to @segundo_director_tesis_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @segundo_director_tesis_registro }
      else
        format.html { render :new }
        format.json { render json: @segundo_director_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /segundo_director_tesis_registros/1
  # PATCH/PUT /segundo_director_tesis_registros/1.json
  def update
    @segundo_director_tesis_registro = SegundoDirectorTesisRegistro.find(params[:id])
    authorize @segundo_director_tesis_registro

    respond_to do |format|
      if @segundo_director_tesis_registro.update(segundo_director_tesis_registro_params)
        format.html { redirect_to @segundo_director_tesis_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @segundo_director_tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @segundo_director_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segundo_director_tesis_registros/1
  # DELETE /segundo_director_tesis_registros/1.json
  def destroy
    @segundo_director_tesis_registro = SegundoDirectorTesisRegistro.find(params[:id])
    authorize @segundo_director_tesis_registro
    
    @segundo_director_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to segundo_director_tesis_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segundo_director_tesis_registro
      @segundo_director_tesis_registro = SegundoDirectorTesisRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def segundo_director_tesis_registro_params
      params.require(:segundo_director_tesis_registro).permit(:nombre, :caso_id)
    end
end
