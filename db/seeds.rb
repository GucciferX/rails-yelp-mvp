puts "Cleaning up database"
Restaurant.destroy_all
puts "Database is clean"

5.times do
 restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_numer: Faker::PhoneNumber,
    category: ["chinese", "italian", "japanese", "french"].sample,
  )
 puts "restaurant #{restaurant.id} is created"
end
