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
  resources :documents, only: [:show]
  resources :channels, only: [:index, :new, :create, :edit, :update]
  resources :comments, only: [:new, :create, :delete]
  resources :users, only: [:edit, :update]
  get "participation", to: "users#participation"
  get "newsletter", to: "pages#newsletter"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

