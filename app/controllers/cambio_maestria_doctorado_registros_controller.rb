class CambioMaestriaDoctoradoRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cambio_maestria_doctorado_registro, only: [:show, :edit, :update, :destroy]

  # GET /cambio_maestria_doctorado_registros
  # GET /cambio_maestria_doctorado_registros.json
  def index
    @cambio_maestria_doctorado_registros = CambioMaestriaDoctoradoRegistro.all
  end

  # GET /cambio_maestria_doctorado_registros/1
  # GET /cambio_maestria_doctorado_registros/1.json
  def show
  end

  # GET /cambio_maestria_doctorado_registros/new
  def new
    @cambio_maestria_doctorado_registro = CambioMaestriaDoctoradoRegistro.new
  end

  # GET /cambio_maestria_doctorado_registros/1/edit
  def edit
  end

  # POST /cambio_maestria_doctorado_registros
  # POST /cambio_maestria_doctorado_registros.json
  def create
    @cambio_maestria_doctorado_registro = CambioMaestriaDoctoradoRegistro.new(cambio_maestria_doctorado_registro_params)

    respond_to do |format|
      if @cambio_maestria_doctorado_registro.save
        format.html { redirect_to @cambio_maestria_doctorado_registro, notice: 'Cambio maestria doctorado registro was successfully created.' }
        format.json { render :show, status: :created, location: @cambio_maestria_doctorado_registro }
      else
        format.html { render :new }
        format.json { render json: @cambio_maestria_doctorado_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cambio_maestria_doctorado_registros/1
  # PATCH/PUT /cambio_maestria_doctorado_registros/1.json
  def update
    respond_to do |format|
      if @cambio_maestria_doctorado_registro.update(cambio_maestria_doctorado_registro_params)
        format.html { redirect_to @cambio_maestria_doctorado_registro, notice: 'Cambio maestria doctorado registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cambio_maestria_doctorado_registro }
      else
        format.html { render :edit }
        format.json { render json: @cambio_maestria_doctorado_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambio_maestria_doctorado_registros/1
  # DELETE /cambio_maestria_doctorado_registros/1.json
  def destroy
    @cambio_maestria_doctorado_registro.destroy
    respond_to do |format|
      format.html { redirect_to cambio_maestria_doctorado_registros_url, notice: 'Cambio maestria doctorado registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambio_maestria_doctorado_registro
      @cambio_maestria_doctorado_registro = CambioMaestriaDoctoradoRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cambio_maestria_doctorado_registro_params
      params.require(:cambio_maestria_doctorado_registro).permit(:motivacion, :caso_id)
    end
end
