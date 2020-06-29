class ProgramaPosgradoRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_programa_posgrado_registro, only: [:show, :edit, :update, :destroy]

  # GET /programa_posgrado_registros
  # GET /programa_posgrado_registros.json
  def index
    @programa_posgrado_registros = ProgramaPosgradoRegistro.all
  end

  # GET /programa_posgrado_registros/1
  # GET /programa_posgrado_registros/1.json
  def show
  end

  # GET /programa_posgrado_registros/new
  def new
    @programa_posgrado_registro = ProgramaPosgradoRegistro.new
  end

  # GET /programa_posgrado_registros/1/edit
  def edit
  end

  # POST /programa_posgrado_registros
  # POST /programa_posgrado_registros.json
  def create
    @programa_posgrado_registro = ProgramaPosgradoRegistro.new(programa_posgrado_registro_params)

    respond_to do |format|
      if @programa_posgrado_registro.save
        format.html { redirect_to @programa_posgrado_registro, notice: 'Programa posgrado registro was successfully created.' }
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
    respond_to do |format|
      if @programa_posgrado_registro.update(programa_posgrado_registro_params)
        format.html { redirect_to @programa_posgrado_registro, notice: 'Programa posgrado registro was successfully updated.' }
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
    @programa_posgrado_registro.destroy
    respond_to do |format|
      format.html { redirect_to programa_posgrado_registros_url, notice: 'Programa posgrado registro was successfully destroyed.' }
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
