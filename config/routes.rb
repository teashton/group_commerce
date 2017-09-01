Rails.application.routes.draw do
  root 'shops#index'

  get 'items/index'

  get 'items/show'

  get 'shops/index'

  get 'shops/show'

  get 'carts/show'

  devise_for :users
end
