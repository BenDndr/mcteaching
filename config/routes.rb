Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :chatrooms, only: [ :index, :show ] do
    resources :messages, only: :create
  end

  resources :rdvs, only: [ :index, :destroy ]

  resources :lessons do
    resources :rdvs, only: [ :new, :create ]
  end

  namespace :my do
     resources :rdvs, only: :index
  end
end
