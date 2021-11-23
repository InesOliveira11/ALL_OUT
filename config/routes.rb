Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :questions
  resources :activities
  resources :users
  resources :activities, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
  resources :reviews
end
