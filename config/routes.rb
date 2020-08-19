Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events, only: [:show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :destroy]

  get "search", to: "events#search"
end
