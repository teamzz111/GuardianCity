Rails.application.routes.draw do
  resources :denuncia
  resources :tipo_denuncia
  resources :zonas
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
