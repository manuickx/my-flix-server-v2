class AddTitleToUserFavourites < ActiveRecord::Migration[5.2]
  def change
    add_column :user_favourites, :title, :string
  end
end
