class ActorMoviesController < ApplicationController

    def index
        render json: get_actor_movies
    end

end
