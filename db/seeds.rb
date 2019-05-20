# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_renter = User.create(first_name: 'Anne-Sophie', last_name: 'Ducamin', email: 'anneso@gmail.com', password: 'xxxxxxx')
user_owner = User.create(first_name: 'Arthur', last_name: 'Bureau', email: 'arthur@gmail.com', password: 'xxxxxxx')
monkey1 = Monkey.create(name: 'Joey', speciality: 'Clown', description: "5 ans d'experience dans le cirque Pinder", price: 100, picture: 'https://cdn.pixabay.com/photo/2017/09/15/23/02/monkey-2753916_960_720.jpg', user: user_owner)
booking1 = Booking.create(monkey: monkey1, user: user_renter, checkin: Date.current - 2, checkout: Date.current, status: 2)
