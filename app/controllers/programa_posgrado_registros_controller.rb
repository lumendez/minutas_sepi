class ProgramaPosgradoRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_programa_posgrado_registro, only: [:show, :edit, :update, :destroy]

  # GET /programa_posgrado_registros
  # GET /programa_posgrado_registros.json
  def index
    @programa_posgrado_registros = ProgramaPosgradoRegistro.all
    authorize @programa_posgrado_registros
  end

  # GET /programa_posgrado_registros/1
  # GET /programa_posgrado_registros/1.json
  def show
    @programa_posgrado_registro = authorize ProgramaPosgradoRegistro.find(params[:id])
  end

  # GET /programa_posgrado_registros/new
  def new
    @programa_posgrado_registro = ProgramaPosgradoRegistro.new
    authorize @programa_posgrado_registro
  end

  # GET /programa_posgrado_registros/1/edit
  def edit
    @programa_posgrado_registro = authorize ProgramaPosgradoRegistro.find(params[:id])
  end

  # POST /programa_posgrado_registros
  # POST /programa_posgrado_registros.json
  def create
    @programa_posgrado_registro = ProgramaPosgradoRegistro.new(programa_posgrado_registro_params)
    authorize @programa_posgrado_registro

    respond_to do |format|
      if @programa_posgrado_registro.save
        format.html { redirect_to @programa_posgrado_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @programa_posgrado_registro }
      else
        format.html { render :new }
        format.json { render json: @programa_posgrado_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programa_posgrado_registros/1
  # PATCH/PUT /programa_posgrado_registros/1.json
  def update
    @programa_posgrado_registro = ProgramaPosgradoRegistro.find(params[:id])
    authorize @programa_posgrado_registro

    respond_to do |format|
      if @programa_posgrado_registro.update(programa_posgrado_registro_params)
        format.html { redirect_to @programa_posgrado_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @programa_posgrado_registro }
      else
        format.html { render :edit }
        format.json { render json: @programa_posgrado_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programa_posgrado_registros/1
  # DELETE /programa_posgrado_registros/1.json
  def destroy
    @programa_posgrado_registro = ProgramaPosgradoRegistro.find(params[:id])
    authorize @programa_posgrado_registro
    
    @programa_posgrado_registro.destroy
    respond_to do |format|
      format.html { redirect_to programa_posgrado_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programa_posgrado_registro
      @programa_posgrado_registro = ProgramaPosgradoRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programa_posgrado_registro_params
      params.require(:programa_posgrado_registro).permit(:nombre)
    end
end
