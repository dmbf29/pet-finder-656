puts "Cleaning the db..."
Pet.destroy_all

puts "Creating pets..."
50.times do
  Pet.create!(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    date: Date.today - rand(1..10),
    status: Pet.statuses.keys.sample
  )
end
puts "Created #{Pet.count} pets."
