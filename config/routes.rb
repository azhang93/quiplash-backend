Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'

  resources :rooms, only: [:create, :index]
  resources :questions, only: [:show]
  resources :answers, only: [:create, :show]
  resources :votes, only: [:create, :index]
  resources :games, only: [:create]

  mount ActionCable.server => '/cable'

  # get '/questions' => 'questions#index' # for testing

  # get '/answers' => 'answers#index'
  
  
end