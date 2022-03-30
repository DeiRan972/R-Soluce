class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit destroy]
  def index
    @tasks = Task.all
  end

  def show
    @task_created = Task.order(created_at: :DESC)
  end

  def new
    @project = Project.find(params[project_id])
    @task = Task.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = Task.new(task_params)
    @task.project = @project
    if @task.save
      redirect_to tasks_path, notice: 'new task create'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task = Task.update(task_params)
    if @task.save
      redirect_to task_path(params[:id])
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
    params.require(:task).permit(:name, :description, :status, :project_id, :estimate_time, :real_time, :tjm)
  end
end
