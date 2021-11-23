Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :activities, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
end
