class TeamsController < ApplicationController
  def index
    @users = User.all
  end
end