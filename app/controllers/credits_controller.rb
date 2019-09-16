class CreditsController < ApplicationController

    def index
      render json: get_item_credits
    end

end