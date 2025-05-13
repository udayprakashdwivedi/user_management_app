class JobApplicationsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      if current_user.role.name == "Admin"
        @job_applications = JobApplication.includes(:user).all
      else
        @job_applications = current_user.job_applications
      end
    end
  
    def create
      @job_application = current_user.job_applications.build(job_application_params)
      if @job_application.save
        render json: { message: "Job Application created successfully", job_application: @job_application }, status: :created
      else
        render json: { errors: @job_application.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def job_application_params
      params.require(:job_application).permit(:title, :description)
    end
  end  
  