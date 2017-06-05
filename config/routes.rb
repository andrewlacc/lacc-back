Rails.application.routes.draw do
  root 'home#index'

  get '/comuputertradein',  to: 'home#computer_trade_in'
  get '/useddisplay',       to: 'display#front_form'
  get '/usedcomputer',      to: 'computer#front_form'

  # Admin Login and Menu
  get '/adminlogin',        to: 'admin#login'
  get '/adminarea',         to: 'admin#index'
  get '/login',             to: 'admin#new'
  post '/attempt_login',    to: 'admin#create'
  delete '/logout',         to: 'admin#destroy'

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

  get '/onsite_blank_form', to: 'onsite#blank_form'
end
