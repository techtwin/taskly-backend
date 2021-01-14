class TasksController < ApplicationController

  def index 
    tasks = Task.all
    render json: tasks
  end

  def new 
    task = Task.new
    render json: task
  end

  def show
    task = Task.find(params[:id])
    render json: task
  end

  def create
    task = Task.create!(task_params)
    render json: task
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)
    render json: task
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy!
    render json: {}
  end

  private

  def task_params 
    params.permit(:name, :description, :date, :time, :completed)
  end
end
