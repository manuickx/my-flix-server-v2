class ActorsController < ApplicationController

    def show
        render json: get_actor_details  
    end

end
