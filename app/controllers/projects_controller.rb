class ProjectsController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def index
      @projects = Project.all
    end
  
    def show
      @project = Project.find(params[:id])
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
      params.require(:project).permit(:user_i, :name, :url, :description)
    end
  end
  