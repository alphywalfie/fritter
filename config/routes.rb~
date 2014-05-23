Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :fritters
  resources :users
  resources :prompts
  resources :limits
  
  root 'pages#index'
#get '/admin' => 'pages#admin_index'
#get '/admin/create_prompt' => 'pages#admin_create_prompt'
#get '/admin/edit_prompt' => 'pages#admin_edit_prompt/:id'
#get '/admin/delete_prompt' => 'pages#admin_delete_prompt/:id'
#get '/admin/create_limit' => 'pages#admin_create_limit'
#get '/admin/edit_limit' => 'pages#admin_create_limit/:id'
#get '/admin/delete_limit' => 'pages#admin_create_limit/:id'

end
