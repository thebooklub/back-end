class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :usender_id, :recipient_id
end
