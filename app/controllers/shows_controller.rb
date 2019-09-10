class ShowsController < ApplicationController

  def index
    render json: get_shows
  end

  def show
    render json: get_one_show
  end

end
