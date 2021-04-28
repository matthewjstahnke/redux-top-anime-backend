Rails.application.routes.draw do
  post 'login', to: "sessions#login"
  post 'autologin', to: "sessions#autologin"
  resources :users
  resources :animes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
