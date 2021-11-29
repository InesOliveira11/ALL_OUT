Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users

  resources :activities, only: %i[index show] do
    resources :favourites, only: %i[create destroy]
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show]
  resources :reviews
  resources :favourites, only: %i[index]

  resources :questions do
    resources :answers, only: [:new, :create]
  end

  get 'search', to: "pages#search"

end
