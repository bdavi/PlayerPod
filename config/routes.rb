Rails.application.routes.draw do
  resources :episodes, only: [:index]
  resources :subscriptions, only: [:index, :create, :destroy]

  devise_for :users
  get 'home' => 'static_pages#home'
  root to: 'static_pages#home'
end
