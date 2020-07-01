class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    authorize @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = authorize User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
    authorize @user
  end

  # GET /users/1/edit
  def edit
    @user = authorize User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    authorize @user

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'La petición se guardó correctamente.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    authorize @user

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'La petición se actualizó correctamente.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    authorize @user
    
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'La petición se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  def panel_usuario
    @alumno = Alumno.find_by(user_id: current_user.id)
    if @alumno.present?
      @casos_alumno = Caso.where(alumno_id: @alumno.user_id)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:nombre, :primer_apellido, :segundo_apellido, :curp, :tipo_usuario_id)
    end
end
