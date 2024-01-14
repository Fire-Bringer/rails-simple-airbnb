puts 'Destroying all old flats'
Flat.destroy_all

puts 'Creating 10 new flats'
10.times do
  flat = Flat.create!(
    name: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price_per_night: Faker::Number.number(digits: 3),
    number_of_guests: Faker::Number.number(digits: 1)
  )
  puts "#{flat.name} has been created"
end

puts 'Done!'
