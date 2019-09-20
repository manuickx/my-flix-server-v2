class UserFavouriteSerializer < ActiveModel::Serializer
  attributes :id, :movie_ref_id, :overview, :title, :poster_path, :vote_average, :item_type
  has_one :user
end
