Rails.application.routes.draw do

  root :to => 'pages#home'
  devise_for :users

  get '/blogs' => 'pages#blogs'
  get '/visualiser' => 'pages#visualiser'
  get '/donations' => 'pages#donations'
  post '/users' => 'pages#home'

  # resources :users, :only => [:new, :create]
  # get '/login' => 'session#signup'        # Sign in form
  # post '/login' => 'session#create'    # Sign in action
  # delete '/login' => 'session#destroy' # Sign out

end
