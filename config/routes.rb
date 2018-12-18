Rails.application.routes.draw do
  root to: 'tasks#index'
  get 'toppages/index'
  # 以下はresources :usersに内包されている
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  # 以下はresources :sessionsに内包されている
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # 以下は必要
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks, only: [:index, :show, :new, :create, :destroy, :edit, :update]


end