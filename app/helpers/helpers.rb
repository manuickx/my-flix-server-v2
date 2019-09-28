module Helpers

    def get_items
        items = RestClient.get("https://api.themoviedb.org/3/discover/#{params[:type]}?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US&include_adult=false&include_video=false&page=#{params[:page]}")
    end

    def get_one_item
        item = RestClient.get("https://api.themoviedb.org/3/#{params[:type]}/#{params[:item_id]}?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}")
    end

    def get_item_credits
        credits = RestClient.get("https://api.themoviedb.org/3/#{params[:type]}/#{params[:item_id]}/credits?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}")
    end

    def get_item_trailers
        trailers = RestClient.get("https://api.themoviedb.org/3/#{params[:type]}/#{params[:item_id]}/videos?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}")
    end

    def get_item_credits
        credits = RestClient.get("https://api.themoviedb.org/3/#{params[:type]}/#{params[:item_id]}/credits?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}")
    end

    def get_recommended
        recommended = RestClient.get("https://api.themoviedb.org/3/#{params[:type]}/#{params[:item_id]}/recommendations?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US&page=1")
    end

    def get_item_search
        movies = RestClient.get("https://api.themoviedb.org/3/search/#{params[:search_type]}?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&query=#{params[:search_term]}&page=#{params[:page]}&include_adult=#{params[:adult]}")
    end

    def get_show_season
        show_season = RestClient.get("https://api.themoviedb.org/3/tv/#{params[:show_id]}/season/#{params[:season]}?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US")
    end

    # --------------------------------------------------------------------------------------

    def get_actor_details
        actor = RestClient.get("https://api.themoviedb.org/3/person/#{params[:actor_id]}?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US")
    end

    def get_actor_movies
        actor_movies = RestClient.get("https://api.themoviedb.org/3/person/#{params[:actor_id]}/movie_credits?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US")
    end

    def get_actor_shows
        actor_shows = RestClient.get("https://api.themoviedb.org/3/person/#{params[:actor_id]}/tv_credits?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US")
    end

    def get_actor_images
        actor_movies = RestClient.get("https://api.themoviedb.org/3/person/#{params[:actor_id]}/images?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US")
    end

    # -------------------------------------------------------------------------------------

    # For decrypting
    # Rails.application.credentials.dig(:themoviedb_api)

end