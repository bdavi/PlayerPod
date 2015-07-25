Rails.application.routes.draw do
  get 'about' => 'static_pages#about'
  get 'home' => 'static_pages#home'
  root to: 'static_pages#home'
end
