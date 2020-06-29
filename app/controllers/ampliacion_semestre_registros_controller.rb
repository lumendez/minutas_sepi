class AmpliacionSemestreRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ampliacion_semestre_registro, only: [:show, :edit, :update, :destroy]

  # GET /ampliacion_semestre_registros
  # GET /ampliacion_semestre_registros.json
  def index
    @ampliacion_semestre_registros = AmpliacionSemestreRegistro.all
  end

  # GET /ampliacion_semestre_registros/1
  # GET /ampliacion_semestre_registros/1.json
  def show
  end

  # GET /ampliacion_semestre_registros/new
  def new
    @ampliacion_semestre_registro = AmpliacionSemestreRegistro.new
  end

  # GET /ampliacion_semestre_registros/1/edit
  def edit
  end

  # POST /ampliacion_semestre_registros
  # POST /ampliacion_semestre_registros.json
  def create
    @ampliacion_semestre_registro = AmpliacionSemestreRegistro.new(ampliacion_semestre_registro_params)

    respond_to do |format|
      if @ampliacion_semestre_registro.save
        format.html { redirect_to @ampliacion_semestre_registro, notice: 'Ampliacion semestre registro was successfully created.' }
        format.json { render :show, status: :created, location: @ampliacion_semestre_registro }
      else
        format.html { render :new }
        format.json { render json: @ampliacion_semestre_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ampliacion_semestre_registros/1
  # PATCH/PUT /ampliacion_semestre_registros/1.json
  def update
    respond_to do |format|
      if @ampliacion_semestre_registro.update(ampliacion_semestre_registro_params)
        format.html { redirect_to @ampliacion_semestre_registro, notice: 'Ampliacion semestre registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @ampliacion_semestre_registro }
      else
        format.html { render :edit }
        format.json { render json: @ampliacion_semestre_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ampliacion_semestre_registros/1
  # DELETE /ampliacion_semestre_registros/1.json
  def destroy
    @ampliacion_semestre_registro.destroy
    respond_to do |format|
      format.html { redirect_to ampliacion_semestre_registros_url, notice: 'Ampliacion semestre registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ampliacion_semestre_registro
      @ampliacion_semestre_registro = AmpliacionSemestreRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ampliacion_semestre_registro_params
      params.require(:ampliacion_semestre_registro).permit(:motivacion, :caso_id)
    end
end
