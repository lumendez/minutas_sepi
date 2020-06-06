class DirectorTesisRegistrosController < ApplicationController
  before_action :set_director_tesis_registro, only: [:show, :edit, :update, :destroy]

  # GET /director_tesis_registros
  # GET /director_tesis_registros.json
  def index
    @director_tesis_registros = DirectorTesisRegistro.all
  end

  # GET /director_tesis_registros/1
  # GET /director_tesis_registros/1.json
  def show
  end

  # GET /director_tesis_registros/new
  def new
    @director_tesis_registro = DirectorTesisRegistro.new
  end

  # GET /director_tesis_registros/1/edit
  def edit
  end

  # POST /director_tesis_registros
  # POST /director_tesis_registros.json
  def create
    @director_tesis_registro = DirectorTesisRegistro.new(director_tesis_registro_params)

    respond_to do |format|
      if @director_tesis_registro.save
        format.html { redirect_to @director_tesis_registro, notice: 'Director tesis registro was successfully created.' }
        format.json { render :show, status: :created, location: @director_tesis_registro }
      else
        format.html { render :new }
        format.json { render json: @director_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /director_tesis_registros/1
  # PATCH/PUT /director_tesis_registros/1.json
  def update
    respond_to do |format|
      if @director_tesis_registro.update(director_tesis_registro_params)
        format.html { redirect_to @director_tesis_registro, notice: 'Director tesis registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @director_tesis_registro }
      else
        format.html { render :edit }
        format.json { render json: @director_tesis_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /director_tesis_registros/1
  # DELETE /director_tesis_registros/1.json
  def destroy
    @director_tesis_registro.destroy
    respond_to do |format|
      format.html { redirect_to director_tesis_registros_url, notice: 'Director tesis registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_director_tesis_registro
      @director_tesis_registro = DirectorTesisRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def director_tesis_registro_params
      params.require(:director_tesis_registro).permit(:nombre, :caso_id)
    end
end
