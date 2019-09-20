class AddTypeToUserFavourites < ActiveRecord::Migration[5.2]
  def change
    add_column :user_favourites, :item_type, :string
  end
end
