class UsersController < ApplicationController
    def index
        users = User.all

        render json: users
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    private

    def user_params
        params.permit(:id)
    end
end
