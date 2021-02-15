Rails.application.routes.draw do
  resources :collaborators, only: [:index, :show]
  resources :lists
  resources :tasks
  resources :friend_requests
  resources :users
  post '/register', to: 'auth#register'
  post '/login', to: 'auth#login'
  get '/profile', to: 'users#profile'
end
