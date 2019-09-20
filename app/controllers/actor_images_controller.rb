class ActorImagesController < ApplicationController

    def index
        render json: get_actor_images
    end

end
