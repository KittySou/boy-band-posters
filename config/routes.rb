Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

<<<<<<< HEAD
  resources :posters, only: [:index, :show]
  resources :bookings, only: [:index, :show, :edit, :update, :new, :create, :destroy]
=======
  resources :bookings, only: [:index, :show, :edit, :update, :new, :create]
  resources :posters, only: [:index, :show, :create,:new]
>>>>>>> master
end
