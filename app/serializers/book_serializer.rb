class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :image_url, :description
end
