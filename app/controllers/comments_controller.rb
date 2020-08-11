class CommentsController < ApplicationController
    before_action :authorized

    def create
        comment = Comment.create(user_id: @user.id, bookclub_id: comment_params["bookclub_id"], content: comment_params["content"])

        render json: comment
    end

    def destroy
        comment = Comment.find(comment_params["id"])
        deleted_comment = comment.destroy

        render json: deleted_comment
    end

    private
  
    def comment_params
      params.permit(:comment, :content, :bookclub_id, :id, :user_id)
    end

end
