class Api::V1::UsersController < ApplicationController

    def create
        @user = User.create(user_params)
        byebug
        if @user.valid?
          render json: { user: UserSerializer.new(@user) }, status: :created
        else
            byebug
          render json: { error: 'failed to create user' }, status: :unprocessable_entity
        end
      end    

    private
    def user_params
        params.require(:user).permit(:name, :username, :email, :password, :location)
    end
end
