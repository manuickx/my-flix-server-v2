class AddOverviewToUserFavourites < ActiveRecord::Migration[5.2]
  def change
    add_column :user_favourites, :overview, :text
  end
end
