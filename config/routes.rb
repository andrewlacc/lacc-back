Rails.application.routes.draw do
  # root 'home#home'
  root 'back#index'

  # get 'back/index'
  get 'back/computer_trade_in'
  get 'back/display'
  get 'back/computer'
  get 'back/onsite'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
