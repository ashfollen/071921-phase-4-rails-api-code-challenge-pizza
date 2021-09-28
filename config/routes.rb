Rails.application.routes.draw do
  resources :pizzas, only: [:index]
  resources :restaurant_pizzas, only: [:create]
  resources :restaurants, only: [:index, :show, :destroy]
end
