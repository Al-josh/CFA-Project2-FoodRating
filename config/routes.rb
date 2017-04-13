Rails.application.routes.draw do
  get 'users/show'

  get '/random_background.jpg', to: 'background#photo'

  resources :posts
  root 'pages#home'

  devise_for :users
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
