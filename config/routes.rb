Rails.application.routes.draw do
  resources :shifts
  resources :users
  resources :organisations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
