Rails.application.routes.draw do

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }

  devise_for :users
  get 'home/index'
  root to: "home#index"

  resources :technologies

  # https://guides.rubyonrails.org/routing.html
end
