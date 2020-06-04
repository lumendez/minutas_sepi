class RegistrationsController < Devise::RegistrationsController
=begin
  def create
    super
    UserMailer.email_bienvenida(resource).deliver unless resource.invalid?
  end
=end
  private

  def sign_up_params
    params.require(:user).permit(:nombre, :primer_apellido, :segundo_apellido, :curp, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:nombre, :primer_apellido, :segundo_apellido, :curp, :email, :password, :password_confirmation, :current_password)
  end
end
