Rails.application.routes.draw do
  get 'courses/litterature'

  get 'courses/technique'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
