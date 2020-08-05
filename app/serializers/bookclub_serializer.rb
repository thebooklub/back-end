class BookclubSerializer < ActiveModel::Serializer
  attributes :id, :name, :book_id, :book, :comments
end
