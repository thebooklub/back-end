class BookclubUsersController < ApplicationController

    def create

    end

    private

    def bcu_params
        permit(:bookclub_id, :user_id)
    end
end
