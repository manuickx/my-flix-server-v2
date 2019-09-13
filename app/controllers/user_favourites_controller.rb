class UserFavouritesController < ApplicationController
    def my_favourites
        if logged_in
          render json: User.find(no_call_current_user[:user_id]).user_favourites
        else 
          render json: {error: "Movies not available."}
        end
      end
    
    
      def add_favourites
        user_id = no_call_current_user[:user_id]
        favourite = UserFavourite.create!(user_id: user_id, movie_ref_id: params[:movie_ref_id], title: params[:title], overview: params[:overview], poster_path: params[:poster_path], vote_average: params[:vote_average])
        render json: favourite
      end
    
      def remove_favourite
        user_id = no_call_current_user[:user_id]
        movie = UserFavourite.find_by(movie_ref_id: params[:movie_id], user_id: user_id)
        UserFavourite.destroy(movie.id)
        render json: { success: "Movie removed" }
      end
end
