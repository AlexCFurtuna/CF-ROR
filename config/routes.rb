Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, controllers: { registrations: "registrations" }, path: '', path_names: {sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  root 'static_pages#index'

  post 'static_pages/thank_you'

  resources :orders, only: [:index, :show, :create, :destroy]

  resources :products do
    resources :comments
end

resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
