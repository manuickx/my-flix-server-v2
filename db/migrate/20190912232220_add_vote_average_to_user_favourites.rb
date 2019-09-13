class AddVoteAverageToUserFavourites < ActiveRecord::Migration[5.2]
  def change
    add_column :user_favourites, :vote_average, :float
  end
end
