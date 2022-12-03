class UsersController < ApplicationController
    skip_before_action :authorize, only: :create 

    def index 
        users = User.all 
        render json: users 
    end 
    
    def create 
        user = User.create!(user_params)
        render json: user, status: :created 
    end 

    def show 
        render json: @user 
    end 

    private 

    def user_params 
        params.permit(:username, :password, :password_confirmation)
    end 
end
