class SearchController < ApplicationController

  def index
    render json: get_item_search
  end

end
