class RolesController < ApplicationController
    def index
      @roles = Role.all
      render json: @roles
    end
  
    def create
      @role = Role.create(role_params)
      render json: @role
    end
  
    private
  
    def role_params
      params.require(:role).permit(:name)
    end
  end
  