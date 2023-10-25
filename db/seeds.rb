# Clear existing data
User.destroy_all

# Create sample users
users = []
5.times do |i|
  users << User.create!(email: "user#{i + 1}@example.com", password: "password")
end


# Clear existing recipe data
Recipe.destroy_all

users.each do |user|
  3.times do
    user.recipes.create!(
      title: "Sample Recipe #{Faker::Food.dish}",
      ingredients: Faker::Food.ingredient,
      steps: Faker::Food.description,
      category: %w[starter main dessert].sample
    )
  end
end


# Clear existing rating data
Comment.destroy_all

Recipe.all.each do |recipe|
  2.times do
    recipe.comments.create!(
      user: users.sample,
      content: Faker::Lorem.sentence
    )
  end
end

# Clear existing rating data
Rating.destroy_all

Recipe.all.each do |recipe|
  recipe.ratings.create!(
    user: users.sample,
    value: rand(1..5)
  )
end

