Rails.application.routes.draw do


  devise_for :users

  #resources 
  resources :staffs
  resources :publications

  #pages routes
  get 'pages/about_nematostella'
  get 'pages/contact'
  get 'lines/index'

  #home page
  root'home#home_page'
  end
