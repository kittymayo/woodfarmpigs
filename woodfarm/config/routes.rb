Rails.application.routes.draw do
  get 'baskets/new'
  get 'baskets/create'
  get 'baskets/update'
  get 'baskets/edit'
  get 'baskets/destroy'
  get 'baskets/show'
  get 'basket_items/new'
  get 'basket_items/create'
  get 'basket_items/update'
  get 'basket_items/edit'
  get 'basket_items/destroy'
  get 'basket_items/show'
  get 'basket_items/index'
  get 'orders/new'
  get 'orders/create'
  get 'orders/update'
  get 'orders/edit'
  get 'orders/destroy'
  get 'orders/show'
  get 'products/new'
  get 'products/create'
  get 'products/update'
  get 'products/edit'
  get 'products/destroy'
  get 'products/index'
  get 'products/show'
  get 'users/new'
  get 'users/create'
  get 'users/update'
  get 'users/edit'
  get 'users/destroy'
  get 'users/index'
  get 'users/show'
  root to: 'pages#home'

  resources :products do
    resources :basket_items, only: [:new, :create, :destroy, :edit, :update] do
      resources :baskets, only: [:new, :create, :edit, :update] do
        resources :orders, only: [:new, :create, :edit, :update, :destroy]
      end
    end
  end

  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
