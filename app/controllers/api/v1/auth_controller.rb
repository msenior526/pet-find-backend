class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only [:create]

    private 
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
