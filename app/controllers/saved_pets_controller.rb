class SavedPetsController < ApplicationController
    def index
        @saved_pets = current_user.saved_pets
        render json: @saved_pets
    end
end
