Rails.application.routes.draw do

  get 'lines_management/wt_lines'
  get 'lines_management/tg_m_lines'
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
  get '/search' => 'pages#search', :as => 'search_page', :to => "lines#index"

  # Display Images
  get 'show/lines/images/:id', to: "images#line_images"


  #home page
  root'home#home_page'
  end
