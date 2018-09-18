Rails.application.routes.draw do
  root "workouts#index"
  resources :workouts do 
    resources :comments
  end

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
end

