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
  delete 'products/:id'     => 'products#destroy'

  get '/carted-products'    => 'carted_products#index' 
  post '/carted_products'   => 'carted_products#create'
end


#there was one thing diff in Jay's code,
# he had:
# patch '/orders/:id' => 'orders#update'