class CommentSerializer < ActiveModel::Serializer
  # has_one :user
  attributes :id, :content, :user_id, :bookclub_id, :user_name

  def user_name
    self.object.user.username
  end
end
