Rails.application.routes.draw do
  resources :director_tesis_registros
  resources :casos
  resources :tipo_casos
  resources :alumnos
  devise_for :users, :controllers => { registrations: 'registrations' }
  scope "/admin" do
    resources :users
  end
  resources :users do
    collection do
      get 'panel_usuario'
    end
  end
  resources :tipo_usuarios
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
