# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.password,
        email: Faker::Internet.safe_email,
        password: Faker::Internet.password,
        location: Faker::Address.city + Faker::Address.state + Faker::Address.zip
    )
end

20.times do 
    Pet.create(
        name: Faker::Creature::Dog.name,
        species: Faker::Creature::Animal.name,
        gender: Faker::Gender.binary_type,
        age: Faker::Number.number(digits: 2),
        user_id: Faker::Number.between(from: 1, to: User.all.count)
    )
end