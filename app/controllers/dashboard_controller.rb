class DashboardController < ApplicationController
  def index
    @projects = Project.all
    @users = User.all
    @tasks = Task.all
    if current_user.admin
      @current_user_tasks = Task.all
    else
      @current_user_tasks = Task.where(user: current_user)
    end
  end
end
