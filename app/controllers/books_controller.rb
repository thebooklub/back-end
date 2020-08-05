class BooksController < ApplicationController
    before_action :authorized

    def index
        books = Book.all

        render json: books
    end
end
