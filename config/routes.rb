Rails.application.routes.draw do
    
  resources :users
  post 'users/create', to: "users#create"
  post "/auth/create", to: "auth#create"
  get "/auth/show", to: "auth#show"

  get "/user_favourites", to: "user_favourites#my_favourites"
  post "/user_favourites", to: "user_favourites#add_favourites"
  delete "/user_favourites", to: "user_favourites#remove_favourite"
  
  resources :items, only: [:index, :show]
  post '/search', to: "search#index"
  get '/search', to: "search#index"
  post '/items', to: "items#index"
  post '/items/:id', to: "items#show"
  
  resources :actors, only: [:show]
  post '/actors/:id', to: "actors#show"

  resources :actor_movies, only: [:index]
  post '/actor_movies', to: "actor_movies#index"

  resources :actor_shows, only: [:index]
  post '/actor_shows', to: "actor_shows#index"

  resources :actor_images, only: [:index]
  post '/actor_images', to: "actor_images#index"

  resources :show_season, only: [:index]
  post '/show_season', to: "show_season#index"

  resources :credits, only: [:index]
  post '/credits', to: "credits#index"
  
  resources :trailers, only: [:index]
  post '/trailers', to: "trailers#index"

  resources :recommended, only: [:index]
  post '/recommended', to: "recommended#index"

end
