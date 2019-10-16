class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update]

    def index
        @users = User.all 
    end

    def show
    end

    def new
        @user = User.new
        @user.projects_created.build
    end

    def create
        @user = User.create(user_params)
        byebug
        # name = params[:user][:name]
        # @user = User.create(name: name)
        # @user.update(user_params)
        redirect_to user_path(@user)
    end

    def edit
 
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        User.destroy(params[:id])
        redirect_to users_path
    end

    private
    
    def user_params
        params.require(:user).permit(:name, projects_created_attributes: [:title, :goal, :creator_id])
    end

    def find_user
        @user = User.find(params[:id])
    end
    
end
