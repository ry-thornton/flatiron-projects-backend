class ProjectsController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def index
      @projects = Project.all
      render json: @projects
    end
  
    def show
      @project = Project.find(params[:id])
      render json: @project
    end
  
    def create
      @project = Project.new(project_params)
      @project.save
      render json: @project
    end
  
    def edit
    end
  
    def new
    end
  
    def update
    end
  
    def destroy
      @project = Project.find(params[:id])
      @project.delete
    end
  
    private
  
    def project_params
      params.require(:project).permit(:name, :url, :description, :user_id)
    end
  end
  