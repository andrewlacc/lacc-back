Rails.application.routes.draw do
  root 'home#index'

  get 'sale/sale_index'

  get 'service/service_index'
  get 'service/onsite'

  get 'back/rmaindex'
  get 'back/computer_trade_in'
  get 'back/display'
  get 'back/computer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
