class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :password_digest
end
