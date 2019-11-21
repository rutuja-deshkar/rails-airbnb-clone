Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spaces do
    resources :bookings, only: [:new, :create, :index]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
  get '/profile',  to: 'profiles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
