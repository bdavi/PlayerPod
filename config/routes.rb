Rails.application.routes.draw do
  resources :subscriptions, only: [:index, :create, :destroy]

  devise_for :users
  get 'about' => 'static_pages#about'
  get 'home' => 'static_pages#home'
  root to: 'static_pages#home'
end
