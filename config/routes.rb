Rails.application.routes.draw do
  devise_for :users
  get '/'                   => 'products#index'
  get '/products'           => 'products#index'
  root to:                     'products#index'
  get '/products/new'       => 'products#new'
  post '/products'          => 'products#create'
  post '/orders'            => 'orders#create'
  get '/products/:id'       => 'products#show'
  get '/products/:id/edit'  => 'products#edit'
  patch 'products/:id'      => 'products#update'
  delete 'products/:id'      => 'products#destroy'

end