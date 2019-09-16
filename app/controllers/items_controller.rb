class ItemsController < ApplicationController
   
    def index
        render json: get_items
    end
    
    def show
        render json: get_one_item
    end

end
