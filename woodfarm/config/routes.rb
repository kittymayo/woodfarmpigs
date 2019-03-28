Rails.application.routes.draw do
  get 'categories/index'
  root to: 'pages#home'
  scope controller: :pages do
    get :about_pigs
    get :about_us

  end

  resources :categories, only: :index

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
