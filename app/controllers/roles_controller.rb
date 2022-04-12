class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def create
    @role = Role.new(params_role)
    if @role.save
      redirect_to roles_path, notice: 'role créer'
    else
      render :new
    end
  end

  def new
    @role = Role.new
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    redirect_to roles_path, notice: 'Role supprimer'
  end

  private
  def params_role
    params.require(:role).permit(:level)
  end
end
