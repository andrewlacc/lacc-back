Rails.application.routes.draw do
  root 'home#index'

  get '/comuputertradein',  to: 'home#computer_trade_in'
  get '/useddisplay',       to: 'display#front_form'
  get '/usedcomputer',      to: 'computer#front_form'

  # Admin Login and Menu
  get '/login',             to: 'admin#login'
  post '/attempt_login',    to: 'admin#attempt_login'
  delete '/logout',         to: 'admin#logout'

  resources :admin, except: [:show]

  # Used Computer Forms
  resources :computer, except: [:show]

  # Used Display Forms
  resources :display, except: [:show]

  # Onsite Forms
  resources :onsite do
    member do
      get :delete
    end
  end

  resources :clients do
    member do
      get :delete
    end
  end

  resources :off_sites do
    member do
      get :delete
    end
  end

  get '/onsite_blank_form',   to: 'onsite#blank_form'
  get '/computer_blank_form', to: 'computer#blank_form'
  get '/display_blank_form',  to: 'display#blank_form'
end
