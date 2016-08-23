Rails.application.routes.draw do

  resources :courses do
    collection do
      get 'litterature', to: 'courses#litterature'
      get 'technique', to: 'courses#technique'
    end
  end




  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
