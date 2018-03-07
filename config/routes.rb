Rails.application.routes.draw do
  root 'home#index'
  get '/cost',             to: 'home#cost'

  get '/comuputertradein',  to: 'home#computer_trade_in'
  get '/useddisplay',       to: 'display#front_form'
  get '/usedcomputer',      to: 'computer#front_form'

  # Admin Login and Menu / Settings
  get '/login',             to: 'admin#login'
  post '/attempt_login',    to: 'admin#attempt_login'
  delete '/logout',         to: 'admin#logout'
  get '/settings',          to: 'admin#settings'
  post '/update_settings',  to: 'admin#update_settings'

  resources :admin, except: [:show]

  # Used Computer Forms
  resources :computer, except: [:new, :show]

  # Used Display Forms
  resources :display, except: [:new, :show]

  # Onsites
  resources :onsite do
    member do
      get :delete
    end
  end

  get '/get_clients',       to: 'onsite#get_clients'

  # Clients
  resources :clients do
    member do
      get :delete
    end
  end

  # Off Sites
  resources :off_sites do
    member do
      get :delete
    end
  end

  # API stuff
  # get :export_clients, to: 'clients#export_clients'

  get '/onsite_blank_form',   to: 'onsite#blank_form'
  get '/computer_blank_form', to: 'computer#blank_form'
  get '/display_blank_form',  to: 'display#blank_form'
end
