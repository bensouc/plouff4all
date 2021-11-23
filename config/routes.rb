Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :swimming_pools, only: [:index, :show]
  namespace :owner do
    resources :swimming_pools, only: [:index, :new, :edit, :create, :update]
    resources :bookings, only: %i[index update]
  end
  resources :bookings, only: [:new, :create]

  get '/dashboard', to: "pages#dashboard"
end
