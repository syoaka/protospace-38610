Rails.application.routes.draw do

  root to: 'prototypes#index'

  resources :prototypes do
    resources :comments, only: [:create, :new]
  end

  devise_for :users

  resources :users, only: [:show]


end
