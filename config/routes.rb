Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
}

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
