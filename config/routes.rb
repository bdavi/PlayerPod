Rails.application.routes.draw do
  resources :episode_plays, only: [:create]
  resources :episodes, only: [:index]
  resources :subscriptions, only: [:index, :create, :destroy]

  delete 'unplay' => 'episode_plays#destroy_by_episode_and_user'
  devise_for :users
  get 'home' => 'static_pages#home'
  root to: 'static_pages#home'
end
