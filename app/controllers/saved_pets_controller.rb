class SavedPetsController < ApplicationController
    def index
        @saved_pets = current_user.saved_pets
        render json: @saved_pets
    end

    def create
        @saved_pets = current_user.pets_saved.build(saved_pet_params)
        render json: @saved_pets
    end

    private

    def saved_pet_params
        params.permit!(:pet_id)
    end
end
