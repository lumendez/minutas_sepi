class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if current_user.tipo_usuario.nombre == 'Usuario'
      panel_usuario_users_path
    end
  end
end
