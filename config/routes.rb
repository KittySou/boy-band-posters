Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'posters', to: 'posters#index'
  get 'posters/:id', to: 'posters#show', as: 'poster'
end
