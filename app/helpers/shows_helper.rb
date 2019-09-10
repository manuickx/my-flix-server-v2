module ShowsHelper

    def get_shows
        shows = RestClient.get("https://api.themoviedb.org/3/discover/tv?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US&sort_by=popularity.desc&page=#{params[:page]}&include_null_first_air_dates=false")
    end

    def get_one_show
        show = RestClient.get("https://api.themoviedb.org/3/tv/#{params[:show_id]}?api_key=#{Rails.application.credentials.dig(:themoviedb_api)}&language=en-US")
    end
    
end