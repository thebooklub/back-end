class BookclubUsersController < ApplicationController

    def destroy
        bcu = BookclubUser.find(bcu_params[:id])
        deleted_bcu = bcu.destroy

        render json: deleted_bcu
    end

    private

    def bcu_params
        params.permit(:bookclub_id, :user_id, :id)
    end
end
