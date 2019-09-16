class TrailersController < ApplicationController

    def index
      render json: get_item_trailers
    end

end