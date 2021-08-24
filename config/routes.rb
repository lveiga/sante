Rails.application.routes.draw do
  resources :pacientes
  root 'home#index'
  get 'home/about'
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
