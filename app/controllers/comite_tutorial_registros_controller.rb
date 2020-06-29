class ComiteTutorialRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comite_tutorial_registro, only: [:show, :edit, :update, :destroy]

  # GET /comite_tutorial_registros
  # GET /comite_tutorial_registros.json
  def index
    @comite_tutorial_registros = ComiteTutorialRegistro.all
  end

  # GET /comite_tutorial_registros/1
  # GET /comite_tutorial_registros/1.json
  def show
  end

  # GET /comite_tutorial_registros/new
  def new
    @comite_tutorial_registro = ComiteTutorialRegistro.new
  end

  # GET /comite_tutorial_registros/1/edit
  def edit
  end

  # POST /comite_tutorial_registros
  # POST /comite_tutorial_registros.json
  def create
    @comite_tutorial_registro = ComiteTutorialRegistro.new(comite_tutorial_registro_params)

    respond_to do |format|
      if @comite_tutorial_registro.save
        format.html { redirect_to @comite_tutorial_registro, notice: 'Comite tutorial registro was successfully created.' }
        format.json { render :show, status: :created, location: @comite_tutorial_registro }
      else
        format.html { render :new }
        format.json { render json: @comite_tutorial_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comite_tutorial_registros/1
  # PATCH/PUT /comite_tutorial_registros/1.json
  def update
    respond_to do |format|
      if @comite_tutorial_registro.update(comite_tutorial_registro_params)
        format.html { redirect_to @comite_tutorial_registro, notice: 'Comite tutorial registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @comite_tutorial_registro }
      else
        format.html { render :edit }
        format.json { render json: @comite_tutorial_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comite_tutorial_registros/1
  # DELETE /comite_tutorial_registros/1.json
  def destroy
    @comite_tutorial_registro.destroy
    respond_to do |format|
      format.html { redirect_to comite_tutorial_registros_url, notice: 'Comite tutorial registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comite_tutorial_registro
      @comite_tutorial_registro = ComiteTutorialRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comite_tutorial_registro_params
      params.require(:comite_tutorial_registro).permit(:primer_tutor, :segundo_tutor, :tercer_tutor, :cuarto_tutor, :quinto_tutor, :caso_id)
    end
end
