Rails.application.routes.draw do
  resources :users
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  resources :bookclub_users
  resources :messages
  resources :comments
  resources :bookclubs
  resources :books

  get "/messages/get_messages/:id", to: "messages#get_messages"
  mount ActionCable.server => "/cable"
end
