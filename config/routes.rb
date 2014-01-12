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
    get '/stats/popular', to: 'stats#popular'
    get 'stats/how_to', to: 'stats#how_to'
  end

end
