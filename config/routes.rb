Rails.application.routes.draw do
  
  devise_for :users
  #CRUD routes
  resources :staffs

  #pages routes
  get 'pages/publications_index'
  get 'pages/about_nematostella'
  get 'pages/contact'

  #get 'home/home_page'
  root'home#home_page'
  end
