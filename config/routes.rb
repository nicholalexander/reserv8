Rails.application.routes.draw do
  
  #root
  root 'welcome#index'

  #resources
  resources :customers do
    get 'get_credit_card', to: 'customers#get_credit_card', as: 'get_credit_card'
    post 'get_credit_card', to: 'customers#save_credit_card', as: 'save_credit_card'
  end

  resources :restaurants do
    resources :reservations do
      get 'buy', to: 'reservations#buy_reservation', as: 'buy'
    end
  end

  #sessions
  
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:new, :create, :destroy]

  #manager
  namespace :manager do
    root 'restaurants#index'
    resources :restaurants do
    end

    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#logout', as: 'logout'
    post 'manager-login', to: 'sessions#create', as: 'manager-login'
  end

  #api
  namespace :api, :defaults => {:format => :json}, :path => "", :constraints => {:subdomain => "api"} do
    
    
    namespace :v1 do
      root 'welcome#index'

      resources :reservations
      resources :restaurants
      resources :customers
      
    end
  end


end