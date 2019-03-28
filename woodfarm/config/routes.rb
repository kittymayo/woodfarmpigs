Rails.application.routes.draw do
  root to: 'pages#home'

  resources :products do
    resources :basket_items do
      resources :baskets do
        resources :orders
      end
    end
  end

  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
