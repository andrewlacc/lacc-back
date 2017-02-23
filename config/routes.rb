Rails.application.routes.draw do
  root 'home#index'

  get 'rma/rmaindex'
  get 'rma/display'
  get 'rma/computer'
  get 'rma/progress'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
