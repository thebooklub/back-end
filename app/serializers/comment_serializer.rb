class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :bookclub_id
end
