module MoviesHelper
  
    def get_movies
      movies = RestClient.get("https://api.themoviedb.org/3/discover/movie?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US&include_adult=false&include_video=false&page=#{params[:page]}")
    end
  
    def get_one_movie
      movie = RestClient.get("https://api.themoviedb.org/3/movie/#{params[:movie_id]}?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}")
    end
  
    def get_movie_credits
      credits = RestClient.get("https://api.themoviedb.org/3/movie/#{params[:movie_id]}/credits?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}")
    end
  
    def get_movie_trailers
      trailers = RestClient.get("https://api.themoviedb.org/3/movie/#{params[:movie_id]}/videos?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}")
    end
  
    def get_recommended_movies
      recommended = RestClient.get("https://api.themoviedb.org/3/movie/#{params[:movie_id]}/recommendations?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US&page=1")
    end
  
    def get_movie_search
      movies = RestClient.get("https://api.themoviedb.org/3/search/movie?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&query=#{params[:search_term]}&page=#{params[:page]}&include_adult=false")
    end
  
    # For decrypting
    # Rails.application.credentials.dig(:themoviedb_api)
    # &page=#{params[:page]}
  
  end