class PetController < ApplicationController
    
    private

    def pet_params
        params.require(:pet).permit(:name, :age, :species, :gender, :user_id)
    end
end
