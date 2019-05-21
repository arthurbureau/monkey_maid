# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all



user_renter = User.create(first_name: 'Anne-Sophie', last_name: 'Ducamin', email: 'anneso@gmail.com', password: 'xxxxxxx')
user_owner = User.create(first_name: 'Arthur', last_name: 'Bureau', email: 'arthur@gmail.com', password: 'xxxxxxx')


url = 'https://cdn.pixabay.com/photo/2017/09/15/23/02/monkey-2753916_960_720.jpg'


monkey1 = Monkey.new(name: 'Joey', speciality: 'Clown', description: "5 ans d'experience dans le cirque Pinder", price: 100, user: user_owner)
monkey2 = Monkey.new(name: 'Joey', speciality: 'Clown', description: "5 ans d'experience dans le cirque Pinder", price: 100, user: user_owner)
monkey3 = Monkey.new(name: 'Joey', speciality: 'Clown', description: "5 ans d'experience dans le cirque Pinder", price: 100, user: user_owner)

monkey1.remote_picture_url = url
monkey2.remote_picture_url = url
monkey3.remote_picture_url = url

monkey1.save
monkey2.save
monkey3.save






booking1 = Booking.create(monkey: monkey1, user: user_renter, checkin: Date.current - 2, checkout: Date.current, status: 2)
