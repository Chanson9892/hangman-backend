class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create, :index, :show, :login]
    before_actions :get_user, only: [:show, :update, :destroy]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def destroy
        userId = @user.id
        @user.destroy
        render json: {message:"Zap! user deleted", userId:userId}
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

    def get_user
        @user = User.find(params[:id])
    end    
end
