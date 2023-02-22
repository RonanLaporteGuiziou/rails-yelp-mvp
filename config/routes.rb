# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'restaurants#index'
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[index new create]
  end
end
