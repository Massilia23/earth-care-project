Rails.application.routes.draw do
  devise_for :users
  root to: "missions#index"

  resources :missions do
    resources :bookings, only: %i[show new create edit update destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :vouchers
  # Defines the root path route ("/")
  # root "articles#index"
  get "/profile", to: "pages#profile"
end

