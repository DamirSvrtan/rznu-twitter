RznuTwitter::Application.routes.draw do

  resources :users do
    resources :tweets
  end
  root 'home#index'
  get '/routes', to: 'routes#index'

  resources :sessions, only: [:new, :create, :destroy]
  get '/signup',  to: 'users#new'  
  get '/signin',  to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy', via: :delete
end
