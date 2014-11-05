Rails.application.routes.draw do
  root 'posts#index'

  resources :post, only: [:index, :show]

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :posts, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
