Rails.application.routes.draw do
  # get 'main/index'
  match 'work', to:'work#index', :via=>'get'
  root 'main#about'

  resources :values
  resources :themes
  # resources :microposts
  resources :images
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do

    match 'next_image',       to: 'api#next_image',   via: 'get'
    match 'prev_image',       to: 'api#prev_image',   via: 'get'
    match 'save_value',       to: 'api#save_value',   via: 'get'

  end
  
  match 'index',    to: 'main#index',           via: 'get'
  match 'about',    to: 'main#about',           via: 'get'
  # match 'help',     to: 'main#help',            via: 'get'
  # match 'contacts', to: 'main#contacts',        via: 'get'

  # match 'work', to:'work#index', :via=>'get'
  match 'work/choose_theme', to:'work#choose_theme', :via=>'get'
  match 'work/display_theme', to:'work#display_theme', :via=>'post'

  # match 'work', to:'work#index', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'signup',   to: 'users#new',            via: 'get'
  match 'signin',   to: 'sessions#new',         via: 'get'
  match 'signout',  to: 'sessions#destroy',     via: 'delete'
end
