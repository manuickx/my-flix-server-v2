module ActorsHelper

    def get_actor_details
        actor = RestClient.get("https://api.themoviedb.org/3/person/#{params[:actor_id]}?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US")
    end

    def get_actor_movies
        actor_movies = RestClient.get("https://api.themoviedb.org/3/person/#{params[:actor_id]}/movie_credits?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US")
    end

end