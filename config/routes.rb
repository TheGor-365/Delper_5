Rails.application.routes.draw do

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resource :contacts, only: [:new, :create]

  devise_for :users
  get 'home/index'
  root to: "home#index"

  # https://guides.rubyonrails.org/routing.html
end
