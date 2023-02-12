# config/routes.rb
Rails.application.routes.draw do
  resources :customers do
    resources :accounts do
      member do
        post :top_up
        post :withdraw
      end
    end
    resources :cards
  end
end