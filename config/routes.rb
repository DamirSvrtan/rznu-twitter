RznuTwitter::Application.routes.draw do

  resources :users, only: [:show, :new, :index] do
    resources :tweets
  end

  get '/signup',  to: 'users#new'  
  resources :sessions, only: [:create]
  get '/signin',  to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy', via: :delete
  root 'home#index'
  get '/routes', to: 'routes#index'
end
