Rails.application.routes.draw do
  root to: "restaurants#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new,:create,:destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
