class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(username: params[:username])


    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login
    render json: @user
  end
  
  def index
      users = User.all

      render json: users
  end

  def show
      user = User.find(params[:id])

      render json: user
  end

  def update
    user = User.find(params[:id])
    # fill dis in w/ what you wanna update
    user.update(user_params)

    render json: user
  end

  private

  def user_params
    params.permit(:name, :username, :password, :age, :favorite_books, :location, :description, :image_url, :user, :id)
  end

end
