class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit destroy]

  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def edit
  end

  def update
    @project = Project.update(project_params)
    if @project.save
      redirect_to project_path(params[:id])
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @project = Project.destroy
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :user_id, :start_date, :end_date, :number_of_day, :index_projects_on_user_id)
  end
end
