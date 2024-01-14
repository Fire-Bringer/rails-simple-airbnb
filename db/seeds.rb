puts 'Destroying all old flats'
Flat.destroy_all

puts 'Creating 10 new flats'
10.times do
  flat = Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::PhoneNumber.phone_number,
    price_per_night: %w[chinese italian japanese french belgian].sample,
    number_of_guests: 
  )
  puts "#{Flat.name} has been created"
end

puts 'Done!'
