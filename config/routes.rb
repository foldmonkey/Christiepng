Rails.application.routes.draw do
  get '/' => 'welcome#index', as: 'root'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/profile/:id' => 'users#show', as: 'profile'
  get '/profile/:id/edit' => 'users#edit'
  patch '/profile/:id' => 'users#update', as: 'update'

  # resources :products

  get "products" => "products#index", as: "products_home"
  get "products/show/:id" => "products#show", as: "products_show"
  get "products/create" => "products#new"
  post "products/create" => "products#create", as: "create_products"
  get "products/:id" => "products#edit"
  patch "products/:id" => "products#update", as: "products_update"
  get "products/show/:id/order" => "products#order", as: "products_order"


end
