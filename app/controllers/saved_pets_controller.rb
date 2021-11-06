class SavedPetsController < ApplicationController
    def index
        @saved_pets = current_user.pets_saved
        render json: @saved_pets
    end

    def create
        # byebug
        @saved_pet = current_user.saved_pets.build(saved_pet_params)
        if @saved_pet.save
            render json: { pet: SavedPetSerializer.new(@saved_pet) }, status: :created
        else
            byebug
            render json: { error: 'failed to save pet'}, status: :unprocessable_entity
        end
    end

    def destroy
        @saved_pet = SavedPet.find_by(id: params[:id])

        if @saved_pet.destroy
            render json: {message: "Successfully destroyed todo!"}
        else
            render json: @saved_pet.errors, status: :unprocessable_entity
        end
    end

    private

    def saved_pet_params
        params.require(:saved_pet).permit(:pet_id)
    end
end
