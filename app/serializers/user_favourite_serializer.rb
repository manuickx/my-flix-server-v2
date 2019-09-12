class UserFavouriteSerializer < ActiveModel::Serializer
  attributes :id, :movie_ref_id
  has_one :user
end
