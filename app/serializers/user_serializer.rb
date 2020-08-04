class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name, :password_digest, :description, :age, :favorite_books, :location, :image_url
end
