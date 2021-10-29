class PetsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        @pets = Pet.all
        render json: @pets
    end

    def create
        @pet = current_user.pets.build(pet_params)

        if @pet.save 
            render json: { pet: PetSerializer.new(@pet) }, status: :created
        else
            render json: { error: 'failed to create pet'}, status: :unprocessable_entity
        end
    end

    def delete
        @pet = Pet.find_by(id: params[:id])
        if @pet.destroy
            render json: {message: "Successfully destroyed PET!"}
        else
            render json: @pet.errors, status: :unprocessable_entity
        end
    end
    
    private

    def pet_params
        params.require(:pet).permit(:name, :age, :species, :gender, :user_id)
    end
end
