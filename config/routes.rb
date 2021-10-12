Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :lessons

  # namespace :my do
  #   ressources :users, only: :show
  #   ressources :lessons, only: :index
  # end
end
