Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
#   get "/bookings", to: "bookings#index"
#   get 'bookings/new', to: 'bookings#new'
#   # get "/posters/:id/bookings/", to: "bookings#index"
  # get "/posters", to: "posters#index"

  resources :posters do
    resources :bookings, only: [:create]

  end
  resources :bookings, only: [:index, :show, :destroy, :update] do
      resources :reviews, only: [:create, :index, :show]
    end

  namespace :my do
    resources :posters, only: [:index]
    resources :bookings, only: [:index, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "posters/new", to: "posters#new"
  get "posters", to: "posters#create"
=======
>>>>>>> master

  resources :posters, only: [:index, :show]
  resources :bookings, only: [:index, :show, :edit, :update, :new, :create]
end
