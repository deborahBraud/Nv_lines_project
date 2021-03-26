Rails.application.routes.draw do

  resources :wild_type_backgrounds
  resources :molecular_data
  devise_for :users

  #resources 
  resources :staffs
  resources :publications
  resources :lines
  resources :phenotypes
  resources :users
  resources :images
  resources :genetic_modification_methods

  #pages routes
  get 'pages/about_nematostella'
  get 'pages/contact'
  get 'lines/index'


  #home page
  root'home#home_page'
  end
