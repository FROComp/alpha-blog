Rails.application.routes.draw do
  # Home
  root 'pages#home'
  get 'about', to: 'pages#about'

  # Article
  resources :articles

  # Signup
  get 'signup', to: 'users#new'

  # Users
  resources :users, except: [:new]
end
