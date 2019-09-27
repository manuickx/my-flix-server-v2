class ActorShowsController < ApplicationController

    def index
        render json: get_actor_shows
    end

end
