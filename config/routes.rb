Rails.application.routes.draw do
    
  # resources :user_favourites
  post 'users/create', to: "users#create"
  post "/auth/create", to: "auth#create"
  get "/auth/show", to: "auth#show"

  get "/user_favourites", to: "user_favourites#my_favourites"
  post "/user_favourites", to: "user_favourites#add_favourites"
  delete "/user_favourites", to: "user_favourites#remove_favourite"
  
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

  resources :show_season, only: [:index]
  post '/show_season', to: "show_season#index"

  resources :credits, only: [:index]
  post '/credits', to: "credits#index"

  resources :trailers, only: [:index]
  post '/trailers', to: "trailers#index"

  resources :show_trailers, only: [:index]
  post '/show_trailers', to: "show_trailers#index"

  # resources :show_season, only: [:index]
  # post '/show_season', to: "show_season#index"

  resources :recommended, only: [:index]
  post '/recommended', to: "recommended#index"

end
