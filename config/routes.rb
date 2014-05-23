Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :fritters
  resources :users
  resources :prompts
  resources :limits
  
  root 'pages#index'
#  devise_for :user do
#   	get '/login', :to => 'devise/sessions#new' # Add a custom sign in route for user sign in
#   	get '/logout', :to => 'devise/sessions#destroy' # Add a custom sing out route for user sign out
#   	get '/register', :to => 'devise/registrations#new' # Add a Custom Route for Registrations
#  end
#get '/admin' => 'pages#admin_index'
#get '/admin/create_prompt' => 'pages#admin_create_prompt'
#get '/admin/edit_prompt' => 'pages#admin_edit_prompt/:id'
#get '/admin/delete_prompt' => 'pages#admin_delete_prompt/:id'
#get '/admin/create_limit' => 'pages#admin_create_limit'
#get '/admin/edit_limit' => 'pages#admin_create_limit/:id'
#get '/admin/delete_limit' => 'pages#admin_create_limit/:id'

end
