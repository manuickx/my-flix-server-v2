class RecommendedController < ApplicationController

    def index
        render json: get_recommended
    end

end
