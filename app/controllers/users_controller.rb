class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    # byebug
    image = Cloudinary::Uploader.upload(user_params[:image_url])
    @user = User.create(name: user_params[:name], username: user_params[:username], password: user_params[:password], age: user_params[:age], description: user_params[:description], favorite_books: user_params[:favorite_books], location: user_params[:location], image_url: image["url"])
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
    # image = Cloudinary::Uploader.upload(user_params[:image_url])
    # user = User.update(name: user_params[:name], username: user_params[:username], age: user_params[:age], description: user_params[:description], favorite_books: user_params[:favorite_books], location: user_params[:location], image_url: image["url"])
    # fill dis in w/ what you wanna update
    user.update(user_params)

    render json: user
  end

  private

  def user_params
    params.permit(:name, :username, :password, :age, :favorite_books, :location, :description, :user, :id, :image_url)
  end

  # def image_params
  #   params.permit(:image_url)
  # end

end
