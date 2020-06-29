class AgregarAsignaturaRegistrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_agregar_asignatura_registro, only: [:show, :edit, :update, :destroy]

  # GET /agregar_asignatura_registros
  # GET /agregar_asignatura_registros.json
  def index
    @agregar_asignatura_registros = AgregarAsignaturaRegistro.all
  end

  # GET /agregar_asignatura_registros/1
  # GET /agregar_asignatura_registros/1.json
  def show
  end

  # GET /agregar_asignatura_registros/new
  def new
    @agregar_asignatura_registro = AgregarAsignaturaRegistro.new
  end

  # GET /agregar_asignatura_registros/1/edit
  def edit
  end

  # POST /agregar_asignatura_registros
  # POST /agregar_asignatura_registros.json
  def create
    @agregar_asignatura_registro = AgregarAsignaturaRegistro.new(agregar_asignatura_registro_params)

    respond_to do |format|
      if @agregar_asignatura_registro.save
        format.html { redirect_to @agregar_asignatura_registro, notice: 'Agregar asignatura registro was successfully created.' }
        format.json { render :show, status: :created, location: @agregar_asignatura_registro }
      else
        format.html { render :new }
        format.json { render json: @agregar_asignatura_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agregar_asignatura_registros/1
  # PATCH/PUT /agregar_asignatura_registros/1.json
  def update
    respond_to do |format|
      if @agregar_asignatura_registro.update(agregar_asignatura_registro_params)
        format.html { redirect_to @agregar_asignatura_registro, notice: 'Agregar asignatura registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @agregar_asignatura_registro }
      else
        format.html { render :edit }
        format.json { render json: @agregar_asignatura_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agregar_asignatura_registros/1
  # DELETE /agregar_asignatura_registros/1.json
  def destroy
    @agregar_asignatura_registro.destroy
    respond_to do |format|
      format.html { redirect_to agregar_asignatura_registros_url, notice: 'Agregar asignatura registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agregar_asignatura_registro
      @agregar_asignatura_registro = AgregarAsignaturaRegistro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agregar_asignatura_registro_params
      params.require(:agregar_asignatura_registro).permit(:asignatura_registro_id, :caso_id)
    end
end
