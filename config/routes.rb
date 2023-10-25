Rails.application.routes.draw do
  # root
  root to: "recipes#index"


  post "/graphql", to: "graphql#execute"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes


  resources :recipes
  resources :comments
  resources :ratings
end
