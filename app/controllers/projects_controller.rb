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
      redirect_to projects_path(@project), notice: 'Projet à bien été créé'
    else
      render :new
    end
  end

  def index
    if current_user.admin
      @projects = Project.all
    end

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Projects: #{@projects.count}", template: 'projects/projects.html.erb', layout: 'pdf'   # Excluding ".pdf" extension.
      end
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project), notice: 'Projet à bien mis à jour'
    else
      render :edit
    end
  end

  def show
    @login_user = User.all
    @task = Task.new

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Project_id: #{@project.id}", template: 'projects/project.html.erb', layout: 'pdf'   # Excluding ".pdf" extension.
      end
    end
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
