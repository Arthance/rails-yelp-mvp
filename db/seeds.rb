puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
umanota = Restaurant.create! name: "Uma Nota", address: "154 rue Saint Denis", phone_number: "063838383", category: "japanese"
pizza_east = Restaurant.create! name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0678787878", category: "italian"

# [umanota, pizza_east].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
puts "Finished!"

puts "Creating reviews..."
review = Review.create! content: "éclaté au sol", rating: 5, restaurant: umanota
review = Review.create! content: "éclaté au sol", rating: 4, restaurant: umanota
review = Review.create! content: "éclaté on sol", rating: 4, restaurant: umanota
review = Review.create! content: "éclaté on sol", rating: 2, restaurant: pizza_east
review = Review.create! content: "éclaté au sol", rating: 1, restaurant: pizza_east
review = Review.create! content: "éclaté on sol", rating: 3, restaurant: pizza_east
puts "Finished!"
