Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :recipes, only: [:index, :create]
      resources :ingredients, only: [:index]
    end
  end
end
