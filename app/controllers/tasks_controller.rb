class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit destroy update]
  before_action :set_project_task, only: %i[index new create update]

  def index
    if current_user.admin
      @tasks_projects = Task.all
      @tasks = @tasks_projects.where(project: @project).all
    else
      @tasks = Task.where(project: @project).where(user: current_user)
    end

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Tasks: #{@tasks.count}", template: 'tasks/tasks.html.erb', layout: 'pdf'   # Excluding ".pdf" extension.
      end
    end
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Tasks: #{@tasks.count}", template: 'tasks/tasks.html.erb', layout: 'pdf'   # Excluding ".pdf" extension.
      end
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.project = @project
    if @task.save
      redirect_to project_tasks_path(@project), notice: 'new task create'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to project_tasks_path([@task.project, @task])
    else
      render :edit
    end
  end

  def destroy
    @task = Task.delete
  end

  def user_tasks
    if current_user.admin
      @current_user_tasks = Task.all
    else
      @current_user_tasks = Task.where(user: current_user)
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :description, :status, :project_id, :estimate_time, :real_time, :tjm, :user_id)
  end

  def set_project_task
    @project = Project.find(params[:project_id])
  end
end
