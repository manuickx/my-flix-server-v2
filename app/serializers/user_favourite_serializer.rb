class UserFavouriteSerializer < ActiveModel::Serializer
  attributes :id, :movie_ref_id, :overview, :title, :poster_path, :vote_average
  has_one :user
end
