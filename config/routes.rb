Rails.application.routes.draw do
	root "shops#index"
  get 'items/index'

  get 'items/show'

  get 'shops/index'

  get 'shops/show'

  get 'carts/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
