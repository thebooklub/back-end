class BookclubSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :name, :book_id, :book, :bcu

  def bcu
    self.object.bookclub_users.where(user_id: logged_in_user.id)
  end
end
