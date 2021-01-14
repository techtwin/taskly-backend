class UsersController < ApplicationController

  def index 
    user = User.all
    render json: users
  end

  def new 
    user = User.new
    render json: user
  end

  def create
    user = User.create!(user_params)
    render json: user
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
