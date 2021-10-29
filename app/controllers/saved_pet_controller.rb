class SavedPetController < ApplicationController
    def index
        @saved_pets = SavedPet.all
        render json: @saved_pets
    end
end
