class CreateSavedPets < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_pets do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
