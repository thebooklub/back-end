class UserSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :name, :username, :password_digest, :description, :age, :favorite_books, :location, :image_url, :comments
end
