class AlumnosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_alumno, only: [:show, :edit, :update, :destroy]

  # GET /alumnos
  # GET /alumnos.json
  def index
    @alumnos = Alumno.all
    authorize @alumnos
  end

  # GET /alumnos/1
  # GET /alumnos/1.json
  def show
    @alumno = authorize Alumno.find(params[:id])
  end

  # GET /alumnos/new
  def new
    if Alumno.find_by(user_id: current_user.id).present?
      redirect_to panel_usuario_users_path, alert: 'Este usuario ya tiene boleta y CVU capturados.'
    else
      @alumno = current_user.alumnos.build
    end
  end

  # GET /alumnos/1/edit
  def edit
    @alumno = authorize Alumno.find(params[:id])
  end

  # POST /alumnos
  # POST /alumnos.json
  def create
    @alumno = current_user.alumnos.build(alumno_params)
    authorize @alumno

    respond_to do |format|
      if @alumno.save
        format.html { redirect_to panel_usuario_users_path, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @alumno }
      else
        format.html { render :new }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumnos/1
  # PATCH/PUT /alumnos/1.json
  def update
    @alumno = Alumno.find(params[:id])
    authorize @alumno

    respond_to do |format|
      if @alumno.update(alumno_params)
        format.html { redirect_to @alumno, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @alumno }
      else
        format.html { render :edit }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumnos/1
  # DELETE /alumnos/1.json
  def destroy
    @alumno = Alumno.find(params[:id])
    authorize @alumno

    @alumno.destroy
    respond_to do |format|
      format.html { redirect_to alumnos_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumno
      @alumno = Alumno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alumno_params
      params.require(:alumno).permit(:boleta, :cvu, :user_id, :programa_posgrado_registro_id)
    end
end
