class Api::UsersController < ApplicationController
before_action :set_user, only: [:show, :destroy]

    def index
        render json: User.all
    end

    def show
        render json: @user
    end

    def destroy
        render json: @user.destroy
    end
    

    private

    def set_user
        @user = User.find(params[:id])
    end
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
