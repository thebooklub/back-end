class CommentChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"

    booklub = Bookclub.find_by(id: params[:id])

    stream_for booklub

    # CommentChannel.broadcast_to booklub, BookclubSerializer.new(booklub)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
