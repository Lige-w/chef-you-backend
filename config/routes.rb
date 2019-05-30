Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      resources :recipes, only: [:index, :create, :show, :update, :destroy]
      resources :ingredients, only: [:index]
      post '/login', to: 'sessions#create'
    end
  end
end