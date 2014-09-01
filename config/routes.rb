require 'sidekiq/web'

TransitYo::Application.routes.draw do

  root 'users#index'

  resources :users, only: [:index, :new, :create, :show] do
    collection do
      get 'auth', to: 'users#auth'
    end
  end

end
