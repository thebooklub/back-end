class BookclubsController < ApplicationController
    before_action :authorized
    def index
        bookclubs = @user.bookclubs

        render json: bookclubs
    end

    def show
        bookclub = Bookclub.find(params[:id])

        render json: bookclub
    end

    private

    def bookclub_params
        params.permit(:id)
    end

end
