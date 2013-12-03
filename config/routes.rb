RznuTwitter::Application.routes.draw do

  root 'home#index'
  resources :sessions, only: [:new, :create] do
  end 

  delete '/sessions', to: 'sessions#destroy', as: :session_destroy

  namespace :api do
    root 'routes#index'
    resources :users, only: [:show, :new, :create, :index] do
      resources :tweets
    end

    resources :logs, only: [:index]
  end

end
