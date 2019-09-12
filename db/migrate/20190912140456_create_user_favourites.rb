class CreateUserFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :user_favourites do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :movie_ref_id

      t.timestamps
    end
  end
end
