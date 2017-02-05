Rails.application.routes.draw do
  get 'auth/google_oauth2/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get '/dashboard', to: 'users#show'

  resources :sessions, only: [:create, :destroy]
  resources :home, only: [:show]

  root to: "home#show"

  namespace :api do
    namespace :v1 do
      resources :exercises, only: [:index, :show]
    end
  end
end
