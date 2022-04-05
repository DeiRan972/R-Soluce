class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.save

    if @project.save
      redirect_to projects_path(@project), notice: 'Projet bien été créé'
    else
      render :new
    end

  end

  def index
    if current_user.admin
      @projects = Project.all
    else
      @projects = Project.where(user: current_user)
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project), notice: 'Projet bien mis à jour'
    else
      render :edit
    end
  end

  def show
    @login_user = User.all
    @task = Task.new
  end

  def destroy
    @project = Project.destroy
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :user_id, :start_date, :end_date, :number_of_day, :index_projects_on_user_id)
  end
end
