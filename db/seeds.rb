Comment.destroy_all
Restaurant.destroy_all


user = User.create!(
  email: 'liz@example.com',
  password: '123123'
)

Restaurant.create!(
  name: Faker::Hipster.word,
  address: Faker::Address.street_address,
  user: user
)

user = User.create!(
  email: 'yuping@example.com',
  password: '123123'
)

Restaurant.create!(
  name: Faker::Hipster.word,
  address: Faker::Address.street_address,
  user: user
)

puts "...Created #{Restaurant.count} restaurants"
