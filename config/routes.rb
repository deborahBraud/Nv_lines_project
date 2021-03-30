Rails.application.routes.draw do

  devise_for :users

  #resources 
  resources :staffs
  resources :publications
  resources :lines
  resources :phenotypes
  resources :users
  resources :images
  resources :genetic_modification_methods
  resources :groups
  resources :wild_type_backgrounds
  resources :molecular_data

  #pages routes
  get 'pages/about_nematostella'
  get 'pages/contact'
  get 'lines/index'

  #search bar route
  get '/search' => 'pages#search', :as => 'search_page'


  #home page
  root'home#home_page'
  end
