Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :missions do
    resources :bookings, only: %i[new create]
    resources :declined_bookings, only: %i[create]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  resources :bookings, only: %i[show edit update destroy] do
    resources :vouchers, only: %i[new create show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :vouchers
  # Defines the root path route ("/")
  get "/profile", to: "pages#profile"
  get "/calendar", to: "pages#calendar"

  resources :calendars, only: :index
  resources :vouchers, only: %i[show index]

  mount ActionCable.server => '/cable'
end
