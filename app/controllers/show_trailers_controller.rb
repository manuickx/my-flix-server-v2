class ShowTrailersController < ApplicationController

    def index
        render json: get_show_trailers
    end

end
