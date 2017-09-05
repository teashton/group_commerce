Rails.application.routes.draw do
  root 'shops#index'

  resources :shops, :items, :carts
  devise_for :users
  # devise_for :users, controllers: {
  #         sessions: 'users/sessions'
  #       }
end
