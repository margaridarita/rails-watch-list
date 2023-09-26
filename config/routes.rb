Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users
  
  root to: 'lists#index'

  resources :lists, except: [:edit, :update, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

  resources :movies, only: [:index, :show]
end
