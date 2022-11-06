# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: "John")
user2 = User.create(name: "Ali")
user3 = User.create(name: "Grace")

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here
Review.create(comment: "Nice",star_rating: 10, product_id:product1.id, user_id: user1.id)
Review.create(comment: "Wow",star_rating: 7, product_id:product2.id, user_id: user2.id)
Review.create(comment: "Fantastic",star_rating: 5, product_id:product3.id, user_id: user3.id)
Review.create(comment: "Tried",star_rating: 3, product_id:product4.id, user_id: user3.id)
Review.create(comment: "Bad",star_rating: 1, product_id:product5.id, user_id: user2.id)
puts "Seeding done!"