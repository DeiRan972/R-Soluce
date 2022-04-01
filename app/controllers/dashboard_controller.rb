class DashboardController < ApplicationController
  def index
    @projects = Project.all
    @users = User.all
    @tasks = Task.all
    @current_user_tasks = Task.where(user: current_user)
  end
end
