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

    def create
        bookclub = Bookclub.find_or_create_by(book_id: bookclub_params[:book_id])
        bookclub.update(name: bookclub_params[:name])
        BookclubUser.find_or_create_by(bookclub_id: bookclub.id, user_id: @user.id)

        render json: bookclub
    end

    private

    def bookclub_params
        params.permit(:id, :book_id, :name)
    end

end
