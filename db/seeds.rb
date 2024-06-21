20.times do
  Post.create(title: Faker::Lorem.question, description: Faker::Lorem.paragraph)
end
