Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/blogs' => 'pages#blogs'

  root :to => 'pages#home'

  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'        # Sign in form
  post '/login' => 'session#create'    # Sign in action
  delete '/login' => 'session#destroy' # Sign out

end
