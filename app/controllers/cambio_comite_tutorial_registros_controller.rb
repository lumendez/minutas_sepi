class CambioComiteTutorialRegistrosController < ApplicationController
  before_action :set_cambio_comite_tutorial_registro, only: [:show, :edit, :update, :destroy]

  # GET /cambio_comite_tutorial_registros
  # GET /cambio_comite_tutorial_registros.json
  def index
    @cambio_comite_tutorial_registros = CambioComiteTutorialRegistro.all
  end

  # GET /cambio_comite_tutorial_registros/1
  # GET /cambio_comite_tutorial_registros/1.json
  def show
  end

  # GET /cambio_comite_tutorial_registros/new
  def new
    @cambio_comite_tutorial_registro = CambioComiteTutorialRegistro.new
  end

  # GET /cambio_comite_tutorial_registros/1/edit
  def edit
  end

  # POST /cambio_comite_tutorial_registros
  # POST /cambio_comite_tutorial_registros.json
  def create
    @cambio_comite_tutorial_registro = CambioComiteTutorialRegistro.new(cambio_comite_tutorial_registro_params)

    respond_to do |format|
      if @cambio_comite_tutorial_registro.save
        format.html { redirect_to @cambio_comite_tutorial_registro, notice: 'Cambio comite tutorial registro was successfully created.' }
        format.json { render :show, status: :created, location: @cambio_comite_tutorial_registro }
      else
        format.html { render :new }
        format.json { render json: @cambio_comite_tutorial_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cambio_comite_tutorial_registros/1
  # PATCH/PUT /cambio_comite_tutorial_registros/1.json
  def update
    respond_to do |format|
      if @cambio_comite_tutorial_registro.update(cambio_comite_tutorial_registro_params)
        format.html { redirect_to @cambio_comite_tutorial_registro, notice: 'Cambio comite tutorial registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cambio_comite_tutorial_registro }
      else
        format.html { render :edit }
        format.json { render json: @cambio_comite_tutorial_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambio_comite_tutorial_registros/1
  # DELETE /cambio_comite_tutorial_registros/1.json
  def destroy
    @cambio_comite_tutorial_registro.destroy
    respond_to do |format|
      format.html { redirect_to cambio_comite_tutorial_registros_url, notice: 'Cambio comite tutorial registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambio_comite_tutorial_registro
      @cambio_comite_tutorial_registro = CambioComiteTutorialRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cambio_comite_tutorial_registro_params
      params.require(:cambio_comite_tutorial_registro).permit(:primer_tutor, :segundo_tutor, :tercer_tutor, :cuarto_tutor, :quinto_tutor, :caso_id)
    end
end
