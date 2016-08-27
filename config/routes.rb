Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"

  resources :courses, only: [:show] do
    collection do
      get 'litterature', to: 'courses#litterature'
      get 'technique', to: 'courses#technique'
    end
  end

  resources :lectures, only: [:show]
  resources :channels, only: [:index]
  resources :comments, only: [:new, :create, :delete]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

