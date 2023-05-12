Rails.application.routes.draw do
  resources :items, only: [:index]  # for getting all items
  resources :users do
    resources :items, only: [:index, :show, :create]  # nested routes
  end
end
