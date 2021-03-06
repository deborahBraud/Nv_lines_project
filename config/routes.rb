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
  get 'pages/reporting'
  get 'pages/about_nvlines'
  get 'lines/index'
  get 'wt_lines/index', action: :wt_index, controller: 'lines'
  get 'reporter_lines/index', action: :reporter_index, controller: 'lines'
  get 'functional_lines/index', action: :functional_index, controller: 'lines'


  #search bar route
  get '/search' => 'pages#search', :as => 'search_page', :to => "lines#index"

  # Display Images
  get 'show/lines/images/:id', to: "images#line_images"

  
  #home page
  root'home#home_page'
  end
