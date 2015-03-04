Rails.application.routes.draw do
  devise_for :users
  
  #resources :recipes #this will replace all the below
  get '/'                   => 'products#index'
  get '/products'           => 'products#index' #, :as => :recipes this is a variable so we could change the path easily, see below for syntax
  root to:                     'products#index'
  get '/products/new'       => 'products#new' #, :as => :new_recipe
  post '/products'          => 'products#create' #we don't need a variable here
  post '/orders'            => 'orders#create'
  
  get '/products/:id'       => 'products#show' #, 
  get '/products/:id/edit'  => 'products#edit'
  patch 'products/:id'      => 'products#update'
  delete 'products/:id'     => 'products#destroy'

  get '/carted-products'       => 'carted_products#index' 
  post '/carted-products'      => 'carted_products#create'
  
end

# resources :recipes 

#there was one thing diff in Jay's code,
# he had:
# patch '/orders/:id' => 'orders#update'

# redirect_to "/"
#redirect_to products_path
#recipe_path(@recipe.id) this is in a slug the same as "recipes/#{@recipe.id}"
# <% edit_recipe_path(@recipe.id) %>