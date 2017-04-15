Rails.application.routes.draw do
  get 'pages/admin_page'

  get 'users/show'

  get '/random_background.jpg', to: 'background#photo'

  resources :posts
  root 'pages#home'
  get 'admin_page', to: 'pages#admin_page'


  # devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session    
  end
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
