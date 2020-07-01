class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def after_sign_in_path_for(resource)
    if current_user.tipo_usuario.nombre == 'Usuario'
      panel_usuario_users_path
    end
  end

  private

  def user_not_authorized
    flash[:alert] = "No está autorizado para esta acción."
    redirect_to(request.referrer || panel_usuario_users_path)
  end
end
