Rails.application.routes.draw do
  resources :tipo_denuncia
  resources :zonas
  resources :denuncia
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
