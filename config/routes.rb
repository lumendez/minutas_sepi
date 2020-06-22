Rails.application.routes.draw do
  resources :examen_obtencion_grado_registros
  resources :solicitud_abierta_registros
  resources :segundo_director_tesis_registros
  resources :revocacion_baja_registros
  resources :cambio_comision_revisora_registros
  resources :comision_revisora_registros
  resources :cambio_comite_tutorial_registros
  resources :comite_tutorial_registros
  resources :flexibilidad_academica_registros
  resources :solicitud_programa_movilidad_registros
  resources :cursar_unidad_aprendizaje_externa_registros
  resources :cambio_tema_tesis_registros
  resources :cambio_director_tesis_registros
  resources :recursamiento_otra_unidad_registros
  resources :tema_tesis_registros
  resources :programa_posgrado_registros
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
