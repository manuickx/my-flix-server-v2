class RecommendedController < ApplicationController

    def index
        render json: get_recommended_movies
    end

end
