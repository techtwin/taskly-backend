class ListsController < ApplicationController

  def index 
    lists = List.all
    render json: lists
  end

  def new 
    list = List.new
    render json: list
  end

  def show
    list = List.find(params[:id])
    render json: list
  end

  def create
    list = List.create!(list_params)
    render json: list
  end

  def update
    list = List.find(params[:id])
    list.update!(list_params)
    render json: list
  end

  def destroy
    list = List.find(params[:id])
    list.destroy!
    render json: {}
  end

  private

  def list_params 
    params.permit(:user_id, :name, :color)
  end
end
