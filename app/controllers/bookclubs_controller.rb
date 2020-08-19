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
        # byebug
        book = Book.find_or_create_by(id: bookclub_params[:book_id])
        book.update(title: bookclub_params[:title], author: bookclub_params[:author], image_url: bookclub_params[:image_url])
        bookclub = Bookclub.find_or_create_by(book_id: book.id)
        bookclub.update(name: bookclub_params[:name])
        BookclubUser.find_or_create_by(bookclub_id: bookclub.id, user_id: @user.id)

        render json: bookclub
    end

    private

    def bookclub_params
        params.permit(:id, :book_id, :name, :bookclub, :title, :author, :image_url)
    end

end
