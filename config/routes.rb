Rails.application.routes.draw do
  # Home
  root 'pages#home'
  get 'about', to: 'pages#about'

  # Article
  resources :articles

  # Signup
  get 'signup', to: 'users#new'

  # Session
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Users
  resources :users, except: [:new]
end
