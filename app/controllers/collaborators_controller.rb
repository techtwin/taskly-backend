class CollaboratorsController < ApplicationController

  def index
    collaborators = Collaborators.all
    render json: collaborators
  end

  def show
    collaborator = collaborator.find(params[:id])
    render json: collaborator
  end
end
