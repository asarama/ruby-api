class Api::V1::UserProjectsController < ApplicationController
  before_action :set_user

  # GET /users/:user_id/projects
  def index

    @projects = @user.projects.all
    render json: @projects
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end
end
