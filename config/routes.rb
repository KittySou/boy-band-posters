Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :posters, only: [:index, :show]
  resources :bookings, only: [:index, :show, :edit, :update, :new, :create]
end
