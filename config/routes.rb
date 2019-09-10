Rails.application.routes.draw do
    
  post 'users/create', to: "users#create"
  post "/auth/create", to: "auth#create"
  get "/auth/show", to: "auth#show"

  get "/favorites", to: "favorites#my_favorites"
  post "/favorites", to: "favorites#add_favorites"
  delete "/favorites", to: "favorites#remove_favorite"
  
  resources :movies, only: [:index, :show]
  post '/movies/search', to: "search#index"
  get '/movies/search', to: "search#index"
  post '/movies', to: "movies#index"
  post '/movies/:id', to: "movies#show"

  resources :actors, only: [:show]
  post '/actors/:id', to: "actors#show"

  resources :actor_movies, only: [:index]
  post '/actor_movies', to: "actor_movies#index"
  
  resources :shows, only: [:index, :show]
  post '/shows', to: "shows#index"
  post '/shows/:id', to: "shows#show"

  resources :credits, only: [:index]
  post '/credits', to: "credits#index"

  resources :trailers, only: [:index]
  post '/trailers', to: "trailers#index"

  resources :recommended, only: [:index]
  post '/recommended', to: "recommended#index"

end
