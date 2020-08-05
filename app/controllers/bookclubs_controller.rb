class BookclubsController < ApplicationController
    before_action :authorized
    def index
        bookclubs = @user.bookclubs

        render json: bookclubs
    end


end
