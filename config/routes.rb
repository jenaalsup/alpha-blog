Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  # this is only necessary if not all routes are being used - resources :articles, only: [:show, :index, :new, :create, :edit, :update]
  get 'signup', to: 'users#new' 
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except:[:destroy]
end
