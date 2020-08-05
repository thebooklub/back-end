class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest, :description, :age, :favorite_books, :location, :image_url
end
