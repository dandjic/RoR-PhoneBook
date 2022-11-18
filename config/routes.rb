Rails.application.routes.draw do
  resources :amicis
  resources :friends
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "friends#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
