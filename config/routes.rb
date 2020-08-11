Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

 
  root to: 'tasks#index'
  
  resources :users, only: [:index, :new, :create]
  get 'signup', to:'users#new'
  resources :tasks
end
