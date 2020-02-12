Rails.application.routes.draw do
  resources :foods
  resources :days
  resources :users

  post '/users/authenticate', to:'users#authenticate', as:'authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
