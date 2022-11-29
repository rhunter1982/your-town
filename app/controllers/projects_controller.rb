class ProjectsController < ApplicationController
  #before_action :set_project, only: [:show]

  def show
    @project = Project.find(params[:id])
  end

  def new
    @city = City.find(params[:city_id])
    @project = Project.new
  end

  def create
    @city = City.find(params[:city_id])
    @project = Project.new(project_params)
    @project.city = @city
    @project.user = current_user
    @project.progress = "created"
    @project.save
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :location)
  end
end
