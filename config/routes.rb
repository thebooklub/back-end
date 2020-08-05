Rails.application.routes.draw do
  resources :users
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  resources :bookclub_users
  resources :messages
  resources :comments
  resources :bookclubs
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
