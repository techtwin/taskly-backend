Rails.application.routes.draw do
  resources :collaborators, only: [:index, :show]
  resources :lists
  resources :tasks
  resources :friend_requests
  resources :users
  # post '/users/login', to: 'users#login'
  post '/register', to: 'auth#register'
  post '/login', to: 'auth#login'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
