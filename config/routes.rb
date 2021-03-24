Rails.application.routes.draw do

  resources :genetic_modification_methods
  devise_for :users

  #resources 
  resources :staffs
  resources :publications
  resources :lines
  resources :phenotypes
  resources :users

  #pages routes
  get 'pages/about_nematostella'
  get 'pages/contact'
  get 'lines/index'


  #home page
  root'home#home_page'
  end
