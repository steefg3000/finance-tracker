Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friends', to: 'users#friends'
  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'users#search'
end
