Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :users


  devise_scope :user do
    get    '/login',  to: 'devise/sessions#new'
    post   '/login',  to: 'devise/sessions#new'
    delete '/logout', to: 'devise/sessions#destroy'
  end

  # get 'sessions/new'
  # get 'users/new'
  # get '/signup', to:'users#new'
  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  # delete '/logout',  to: 'sessions#destroy'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :works do
    resources :voices, only: [:create]
  end
  resources :voices, only: [:index, :show, :destroy]

  resources :voices do
    resources :comments, only: [:create]
  end
  resources :comments, only: [:destroy]
  

  resources :relationships, only: [:create, :destroy]
end