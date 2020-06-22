class RevocacionBajaRegistrosController < ApplicationController
  before_action :set_revocacion_baja_registro, only: [:show, :edit, :update, :destroy]

  # GET /revocacion_baja_registros
  # GET /revocacion_baja_registros.json
  def index
    @revocacion_baja_registros = RevocacionBajaRegistro.all
  end

  # GET /revocacion_baja_registros/1
  # GET /revocacion_baja_registros/1.json
  def show
  end

  # GET /revocacion_baja_registros/new
  def new
    @revocacion_baja_registro = RevocacionBajaRegistro.new
  end

  # GET /revocacion_baja_registros/1/edit
  def edit
  end

  # POST /revocacion_baja_registros
  # POST /revocacion_baja_registros.json
  def create
    @revocacion_baja_registro = RevocacionBajaRegistro.new(revocacion_baja_registro_params)

    respond_to do |format|
      if @revocacion_baja_registro.save
        format.html { redirect_to @revocacion_baja_registro, notice: 'Revocacion baja registro was successfully created.' }
        format.json { render :show, status: :created, location: @revocacion_baja_registro }
      else
        format.html { render :new }
        format.json { render json: @revocacion_baja_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revocacion_baja_registros/1
  # PATCH/PUT /revocacion_baja_registros/1.json
  def update
    respond_to do |format|
      if @revocacion_baja_registro.update(revocacion_baja_registro_params)
        format.html { redirect_to @revocacion_baja_registro, notice: 'Revocacion baja registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @revocacion_baja_registro }
      else
        format.html { render :edit }
        format.json { render json: @revocacion_baja_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revocacion_baja_registros/1
  # DELETE /revocacion_baja_registros/1.json
  def destroy
    @revocacion_baja_registro.destroy
    respond_to do |format|
      format.html { redirect_to revocacion_baja_registros_url, notice: 'Revocacion baja registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revocacion_baja_registro
      @revocacion_baja_registro = RevocacionBajaRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def revocacion_baja_registro_params
      params.require(:revocacion_baja_registro).permit(:motivacion, :caso_id)
    end
end
