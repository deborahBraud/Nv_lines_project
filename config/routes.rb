Rails.application.routes.draw do

  devise_for :users

  resources :staffs
  #resources :lines

  #pages routes
  get 'pages/publications_index'
  get 'pages/about_nematostella'
  get 'pages/contact'
  get 'lines/index'

  #home page
  root'home#home_page'
  end
