class CambioTemaTesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cambio_tema_tesis_registro, only: [:show, :edit, :update, :destroy]

  # GET /cambio_tema_tesis_registros
  # GET /cambio_tema_tesis_registros.json
  def index
    @cambio_tema_tesis_registros = CambioTemaTesisRegistro.all
  end

  # GET /cambio_tema_tesis_registros/1
  # GET /cambio_tema_tesis_registros/1.json
  def show
  end

  # GET /cambio_tema_tesis_registros/new
  def new
    @cambio_tema_tesis_registro = CambioTemaTesisRegistro.new
  end

  # GET /cambio_tema_tesis_registros/1/edit
  def edit
  end

  # POST /cambio_tema_tesis_registros
  # POST /cambio_tema_tesis_registros.json
  def create
    @cambio_tema_tesis_registro = CambioTemaTesisRegistro.new(cambio_tema_tesis_registro_params)

    respond_to do |format|
      if @cambio_tema_tesis_registro.save
        format.html { redirect_to @cambio_tema_tesis_registro, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @cambio_tema_tesis_registro }
      else
        format.html { render :new }
        format.json { render json: @cambio_tema_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cambio_tema_tesis_registros/1
  # PATCH/PUT /cambio_tema_tesis_registros/1.json
  def update
    respond_to do |format|
      if @cambio_tema_tesis_registro.update(cambio_tema_tesis_registro_params)
        format.html { redirect_to @cambio_tema_tesis_registro, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @cambio_tema_tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @cambio_tema_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambio_tema_tesis_registros/1
  # DELETE /cambio_tema_tesis_registros/1.json
  def destroy
    @cambio_tema_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to cambio_tema_tesis_registros_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambio_tema_tesis_registro
      @cambio_tema_tesis_registro = CambioTemaTesisRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cambio_tema_tesis_registro_params
      params.require(:cambio_tema_tesis_registro).permit(:nombre, :caso_id)
    end
end
