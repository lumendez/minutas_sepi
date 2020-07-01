class TipoCasosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tipo_caso, only: [:show, :edit, :update, :destroy]

  # GET /tipo_casos
  # GET /tipo_casos.json
  def index
    @tipo_casos = TipoCaso.all
  end

  # GET /tipo_casos/1
  # GET /tipo_casos/1.json
  def show
  end

  # GET /tipo_casos/new
  def new
    @tipo_caso = TipoCaso.new
  end

  # GET /tipo_casos/1/edit
  def edit
  end

  # POST /tipo_casos
  # POST /tipo_casos.json
  def create
    @tipo_caso = TipoCaso.new(tipo_caso_params)

    respond_to do |format|
      if @tipo_caso.save
        format.html { redirect_to @tipo_caso, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @tipo_caso }
      else
        format.html { render :new }
        format.json { render json: @tipo_caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_casos/1
  # PATCH/PUT /tipo_casos/1.json
  def update
    respond_to do |format|
      if @tipo_caso.update(tipo_caso_params)
        format.html { redirect_to @tipo_caso, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @tipo_caso }
      else
        format.html { render :edit }
        format.json { render json: @tipo_caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_casos/1
  # DELETE /tipo_casos/1.json
  def destroy
    @tipo_caso.destroy
    respond_to do |format|
      format.html { redirect_to tipo_casos_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_caso
      @tipo_caso = TipoCaso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_caso_params
      params.require(:tipo_caso).permit(:nombre)
    end
end
