# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'restaurants#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[new create destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
