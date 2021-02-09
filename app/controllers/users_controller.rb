class UsersController < ApplicationController

  # def profile
  #   # read the token from the authorization header
  #   auth_headers = request.headers["Authorization"]
  #   token = auth_headers.split.last
  #   # decode the token
  #   payload = JWT.decode(token, Rails.application.secrets.secret_key_base, true, { algorithm: "HS256" })
  #   # get the user id from the payload
  #   user_id = payload[0]["user_id"]
  #   # find the user
  #   user = User.find(user_id)
  #   render json: user
  # end

  def profile
    user = AuthorizeRequest.new(request.headers).user
    if user
      render json: user
    else
      render json: { error: "Unauthorized User" }, status: :unauthorized
    end
  end

  def index 
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def new 
    user = User.new
    render json: user
  end

  def create
    user = User.create!(user_params)
    if user.valid?
      render json: user
    else
      render json: { error: "user was not created, please try again!"}
    end
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy!
    render json: {}
  end

  private

  def user_params 
    params.permit(:username, :password, :name, :img)
  end
end
