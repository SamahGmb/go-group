Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:create]
    collection do
      get :my_events
    end
  end
  resources :bookings, only: [:index, :destroy]
end
