Rails.application.routes.draw do
  root 'back#index'

  get 'back/computer_trade_in'
  get 'back/display'
  get 'back/computer'
  get 'back/onsite'

  # Edit forms
  get '/adminlogin',  to: 'admin#login'
  get '/adminarea',   to: 'admin#index'
  get '/login',       to: 'admin#new'
  post '/login',      to: 'admin#create'
  delete '/logout',   to: 'admin#destroy'

  get 'admin/computer'
  get 'admin/display'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
