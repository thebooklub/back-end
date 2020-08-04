Rails.application.routes.draw do
  resources :bookclub_users
  resources :messages
  resources :comments
  resources :users
  resources :bookclubs
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
