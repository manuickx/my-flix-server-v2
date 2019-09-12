class ShowSeasonController < ApplicationController

    def index
        render json: get_show_season
    end

end
