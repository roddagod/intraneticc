Rails.application.routes.draw do
  resources :icc_events
resources :event_stats
  namespace :admin do
      resources :users
      root to: "users#index"
    end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
