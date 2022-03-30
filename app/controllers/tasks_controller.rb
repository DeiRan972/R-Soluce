class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit destroy update]
  before_action :set_project_task, only: %i[index new create update]

  def index
    @tasks = Task.where(project: @project)
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.project = @project
    @task.status = false
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
      redirect_to project_task_path([@task.project, @task])
    else
      render :edit
    end
  end

  def destroy
    @task = Task.delete
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
