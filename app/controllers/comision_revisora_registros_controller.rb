class ComisionRevisoraRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comision_revisora_registro, only: [:show, :edit, :update, :destroy]

  # GET /comision_revisora_registros
  # GET /comision_revisora_registros.json
  def index
    @comision_revisora_registros = ComisionRevisoraRegistro.all
  end

  # GET /comision_revisora_registros/1
  # GET /comision_revisora_registros/1.json
  def show
  end

  # GET /comision_revisora_registros/new
  def new
    @comision_revisora_registro = ComisionRevisoraRegistro.new
  end

  # GET /comision_revisora_registros/1/edit
  def edit
  end

  # POST /comision_revisora_registros
  # POST /comision_revisora_registros.json
  def create
    @comision_revisora_registro = ComisionRevisoraRegistro.new(comision_revisora_registro_params)

    respond_to do |format|
      if @comision_revisora_registro.save
        format.html { redirect_to @comision_revisora_registro, notice: 'Comision revisora registro was successfully created.' }
        format.json { render :show, status: :created, location: @comision_revisora_registro }
      else
        format.html { render :new }
        format.json { render json: @comision_revisora_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comision_revisora_registros/1
  # PATCH/PUT /comision_revisora_registros/1.json
  def update
    respond_to do |format|
      if @comision_revisora_registro.update(comision_revisora_registro_params)
        format.html { redirect_to @comision_revisora_registro, notice: 'Comision revisora registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @comision_revisora_registro }
      else
        format.html { render :edit }
        format.json { render json: @comision_revisora_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comision_revisora_registros/1
  # DELETE /comision_revisora_registros/1.json
  def destroy
    @comision_revisora_registro.destroy
    respond_to do |format|
      format.html { redirect_to comision_revisora_registros_url, notice: 'Comision revisora registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comision_revisora_registro
      @comision_revisora_registro = ComisionRevisoraRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comision_revisora_registro_params
      params.require(:comision_revisora_registro).permit(:presidente, :secretario, :primer_vocal, :segundo_vocal, :tercer_vocal, :suplente, :caso_id)
    end
end
