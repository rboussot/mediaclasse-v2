Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  mount Attachinary::Engine => "/attachinary"
  # mount StripeEvent::Engine, at: '/stripe_events'

  resources :courses, only: [:show, :index] do
    collection do
      get 'litterature', to: 'courses#litterature'
      get 'technique', to: 'courses#technique'
    end
    post 'like'
  end

  resources :lectures, only: [:show] do
    post ':course_id/like' => "lectures#like", on: :collection, as: :like
  end
  resources :documents, only: [:show]
  resources :channels, only: [:index, :new, :create, :edit, :update]
  resources :comments, only: [:index, :new, :edit, :update, :create, :destroy]
  resources :users, only: [:show, :edit, :update] do
    post ':course_id/like' => "users#like", on: :collection, as: :like
  end

  resources :plans, only: [:index, :show, :new, :create, :edit, :update]
  get "planselected", to: "plans#planselected"
  get "newsletter", to: "pages#newsletter"
  get "invoices", to: "pages#invoices"
  get "expired", to: "pages#expired"
  get "unsubscribe", to: "pages#unsubscribe"
  get "inprogress", to: "plans#inprogress"
  get "cancel_plan", to: "plans#cancel"
  get '/googleba02ed7fdee6ed83.html', to: 'pages#googlevalidation'

  root to: 'pages#home'

  resources :stripe_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
