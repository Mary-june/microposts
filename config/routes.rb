Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'users/index'
  get 'users/show'
  get 'users/edit'
  
  resources :users do
    member do
      get 'following','followers'
    end
  end
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts
  resources :relationships, only: [:create, :destroy]
  resources :users, only: [:index, :show] do
   get :favorites, on: :member
  end
end
