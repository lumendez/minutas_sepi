class TemaTesisRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tema_tesis_registro, only: [:show, :edit, :update, :destroy]
  
  validates :nombre, precence: true
  # GET /tema_tesis_registros
  # GET /tema_tesis_registros.json
  def index
    @tema_tesis_registros = TemaTesisRegistro.all
  end

  # GET /tema_tesis_registros/1
  # GET /tema_tesis_registros/1.json
  def show
  end

  # GET /tema_tesis_registros/new
  def new
    @tema_tesis_registro = TemaTesisRegistro.new
  end

  # GET /tema_tesis_registros/1/edit
  def edit
  end

  # POST /tema_tesis_registros
  # POST /tema_tesis_registros.json
  def create
    @tema_tesis_registro = TemaTesisRegistro.new(tema_tesis_registro_params)

    respond_to do |format|
      if @tema_tesis_registro.save
        format.html { redirect_to @tema_tesis_registro, notice: 'Tema tesis registro was successfully created.' }
        format.json { render :show, status: :created, location: @tema_tesis_registro }
      else
        format.html { render :new }
        format.json { render json: @tema_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tema_tesis_registros/1
  # PATCH/PUT /tema_tesis_registros/1.json
  def update
    respond_to do |format|
      if @tema_tesis_registro.update(tema_tesis_registro_params)
        format.html { redirect_to @tema_tesis_registro, notice: 'Tema tesis registro was successfully updated.' }
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
    @tema_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to tema_tesis_registros_url, notice: 'Tema tesis registro was successfully destroyed.' }
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
