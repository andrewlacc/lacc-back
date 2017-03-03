Rails.application.routes.draw do
  root 'home#index'

  get 'back/rmaindex'
  get 'back/display'
  get 'back/computer'
  get 'back/progress'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
