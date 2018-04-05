Rails.application.routes.draw do

  root :to => 'pages#home'
  devise_for :users

  get '/selector' => 'pages#selector'
  get '/visualiser' => 'pages#visualiser'
  get '/campaign' => 'pages#campaign'
  get '/donations' => 'pages#donations'
  get '/secondamend' => 'pages#secondamend'
  get '/library' => 'pages#library'
  get '/links' => 'pages#links'
  get '/news' => 'pages#news'
  get '/aboutus' => 'pages#aboutus'
  get '/contact' => 'pages#contact'
  get '/pages/display_selection' => 'pages#display_selection'
  post '/users' => 'pages#home'

end
