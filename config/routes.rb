Rails.application.routes.draw do
  resources :reviews
  resources :users
  post 'autologin', to: "sessions#autologin"
  post 'login', to: "sessions#login"
  resources :animes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
