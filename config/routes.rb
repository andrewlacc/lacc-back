Rails.application.routes.draw do
  root 'home#index'

  get '/comuputertradein',  to: 'home#computer_trade_in'
  get '/useddisplay',       to: 'display#front_form'
  get '/usedcomputer',      to: 'computer#front_form'

  # Admin Login and Menu
  get '/adminlogin',        to: 'admin#login'
  get '/adminarea',         to: 'admin#index'
  get '/login',             to: 'admin#new'
  post '/login',            to: 'admin#create'
  delete '/logout',         to: 'admin#destroy'

  # Used Computer Forms
  resources :computer, only: [:index, :new, :create, :delete, :destroy]

  # Used Display Forms
  resources :display, only: [:index, :new, :create, :delete, :destroy]

  # Onsite Forms
  resources :onsite do
    member do
      get :delete
    end
  end
end
