class BookclubSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :name, :book_id, :book
end
