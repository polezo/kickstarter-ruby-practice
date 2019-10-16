class ProjectsController < ApplicationController

    before_action :find_project, only: [:show, :edit, :update]

    def index
        @projects = Project.all 
    end

    def show
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.create(project_params)
        # byebug
        redirect_to project_path(@project)
    end

    def edit
 
    end

    def update
        @project.update(project_params)
        redirect_to project_path(@project)
    end

    def destroy
        Project.destroy(params[:id])
        redirect_to projects_path
    end

    private
    
    def project_params
        params.require(:project).permit(:title, :goal, :creator_id)
    end

    def find_project
        @project = Project.find(params[:id])
    end
end
