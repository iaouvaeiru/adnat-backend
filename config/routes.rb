Rails.application.routes.draw do
  resources :shifts
  resources :users
  resources :organisations

  patch "/leave", to: 'users#leave'
  patch "/edit", to: 'users#edit'
  post "/login", to: 'users#login'
  get '/me', to: 'users#me'

  get "/reset", to: 'password_resets#new'
  post "/reset", to: 'password_resets#create'
  get "/reset/edit", to: 'password_resets#edit'
  patch "/reset/edit", to: 'password_resets#update'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
