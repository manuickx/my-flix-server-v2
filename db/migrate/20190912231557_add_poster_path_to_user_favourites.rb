class AddPosterPathToUserFavourites < ActiveRecord::Migration[5.2]
  def change
    add_column :user_favourites, :poster_path, :string
  end
end
