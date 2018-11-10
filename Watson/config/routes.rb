Rails.application.routes.draw do
  resources :messagewatsons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to  => "watson#index"
end
