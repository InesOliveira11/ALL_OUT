Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities
  resources :users
  resources :activities, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
end
