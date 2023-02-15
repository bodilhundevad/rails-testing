# Everytime we reseed, we want to delete all the products
Product.destroy_all
puts "Deleted all products"

# create 5 products with faker gem
puts "Creating 5 products..."
5.times do |i|
  product = Product.create!(
    name: Faker::Company.name,
    tagline: Faker::Company.catch_phrase
  )
  puts "#{i + 1}. #{product.name}, #{product.tagline}"
end
puts "Finished!"
