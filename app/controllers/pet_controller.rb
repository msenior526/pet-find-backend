class PetController < ApplicationController

    def create
        @pet = Pet.create(pet_params)

        if @pet.valid? 
            render json: { PetSerializer.new(@pet) }, status: :created
        else
            render json: { error: 'failed to create pet'}, status: :unprocessable_entity
        end
    end
    
    private

    def pet_params
        params.require(:pet).permit(:name, :age, :species, :gender, :user_id)
    end
end
