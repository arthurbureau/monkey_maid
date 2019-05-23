# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Start of seed !!"


Booking.destroy_all
Monkey.destroy_all
User.destroy_all

avatar1 = 'https://res.cloudinary.com/dzh1pkhi5/image/upload/v1558534401/P1070601_kryzpi.jpg'
avatar2 = 'https://res.cloudinary.com/dzh1pkhi5/image/upload/v1558534401/P1070586_pkcnp9.jpg'
avatar3 = 'https://res.cloudinary.com/dzh1pkhi5/image/upload/v1558534402/P1070863-Modifier_gamgfx.jpg'
avatar4 = 'https://res.cloudinary.com/dzh1pkhi5/image/upload/v1558534403/P1080047-Modifier_uuhjav.jpg'

user_renter1 = User.new(first_name: 'Kurt', last_name: 'BB', email: 'kurt@gmail.com', password: 'xxxxxxx')
user_renter2 = User.new(first_name: 'Say', last_name: 'DD', email: 'say@gmail.com', password: 'xxxxxxx')
user_owner1 = User.new(first_name: 'Manon', last_name: 'Ducamin', email: 'manon@gmail.com', password: 'xxxxxxx')
user_owner2 = User.new(first_name: 'Moranne', last_name: 'Bureau', email: 'moranne@gmail.com', password: 'xxxxxxx')

user_renter1.remote_avatar_url = avatar1
user_renter1.save

user_renter2.remote_avatar_url = avatar2
user_renter2.save

user_owner1.remote_avatar_url = avatar3
user_owner1.save

user_owner2.remote_avatar_url = avatar4
user_owner2.save

url1 = 'https://cdn.pixabay.com/photo/2017/09/15/23/02/monkey-2753916_960_720.jpg'
url2 = 'https://images.unsplash.com/photo-1556297079-af2d8e7de8fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'
url3 = 'https://images.unsplash.com/photo-1540573133985-87b6da6d54a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=755&q=80'
url4 = 'https://images.unsplash.com/photo-1549535126-4c1411d8e14b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=861&q=80'
url5 = 'https://images.unsplash.com/photo-1432836606614-05efc6b80bd4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80'
url6 = 'https://images.unsplash.com/photo-1544187017-b2816ccb70af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'
url7 = 'https://images.unsplash.com/photo-1438667182753-2290169f94ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=747&q=80'
url8 = 'https://images.unsplash.com/photo-1546275076-508940a1f525?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
url9 = 'http://img.src.ca/2015/06/09/635x357/150609_fv5vf_pluson_chimpanzee_sn635.jpg'
url10 = 'https://i.pinimg.com/originals/4a/90/42/4a9042e7d4663736bfffa2469957236d.jpg'
url11 = 'https://publidata-prod.s3.amazonaws.com/production/images/images/000/021/734/original/la_planete_des_singes_image_4.jpg?1502270669'
url12 = 'https://dcassetcdn.com/w1k/submissions/10738000/10738368_94f3.jpg'
url13 = 'https://lph5i1b6c053kq7us26bdk75-wpengine.netdna-ssl.com/wp-content/uploads/2012/04/proboscis-monkey-facts.jpg'
url14 = 'https://www.somepets.com/wp-content/uploads/2012/11/Funny-Monkey-Pictures-2.jpg'
url15 = 'https://www.funsumatra.com/wp-content/uploads/2014/12/orang-utan-update-2.jpg'


monkey1 = Monkey.new(name: 'Joey', speciality: 'Clown', description: "5 year in Pinder Circus", price: 100, user: user_owner1, address: "Place de la bourse, Bordeaux")
monkey2 = Monkey.new(name: 'Nana', speciality: 'Nannie', description: "10 years with children! Love cooking cookies", price: 200, user: user_owner2, address: "9 rue des Douves, Bordeaux")
monkey3 = Monkey.new(name: 'Bob', speciality: 'Singer', description: "Only love singing Bob Marley at the sunset", price: 150, user: user_owner1, address: "Jardin public, Bordeaux")
monkey4 = Monkey.new(name: 'Johnny', speciality: 'Singer', description: "Celine Dion is her best friend", price: 160, user: user_owner2, address: "Parc rivière, Bordeaux")
monkey5 = Monkey.new(name: 'Lulu', speciality: 'Chef', description: "Love cooking Pizzas and Banana Split", price: 230, user: user_owner1, address: "40 rue Saint James, Bordeaux")
monkey6 = Monkey.new(name: 'Kelly', speciality: 'Chef', description: "Vegan friendly", price: 80, user: user_owner2, address: "16 rue de la monnaie, Bordeaux")
monkey7 = Monkey.new(name: 'BlackB', speciality: 'Killer', description: "King of the jungle", price: 300, user: user_owner1, address: "16 rue léonce motelay, Bordeaux")
monkey8 = Monkey.new(name: 'Jacky', speciality: 'Gardener', description: "Studied with Versailles'gardeners", price: 100, user: user_owner2, address: "16 rue dupaty, Bordeaux")
monkey9 = Monkey.new(name: 'Kanye', speciality: 'Clown', description: "best gags in youtube", price: 30, user: user_owner1, address: "16 rue pomme d'or, Bordeaux")
monkey10 = Monkey.new(name: 'Josette', speciality: 'Nannie', description: "The best! Help already 5 families.", price: 600, user: user_owner2, address: "rue notre dame, Bordeaux")
monkey11 = Monkey.new(name: 'Ben', speciality: 'Killer', description: "Dumbledore soldier", price: 200, user: user_owner1, address: "16 cours portal, Bordeaux")
monkey12 = Monkey.new(name: 'DJ Marcel', speciality: 'Singer', description: "Best DJ in Ibiza", price: 50, user: user_owner2, address: "16 Rue de la Benauge, Bordeaux")
monkey13 = Monkey.new(name: 'Sully', speciality: 'Gardener', description: "One year of experience", price: 10, user: user_owner1, address: "16 cours victor hugo, Bordeaux")
monkey14 = Monkey.new(name: 'Diego', speciality: 'Killer', description: "Godfather", price: 200, user: user_owner2, address: "16 cours Alsace Lorraine, Bordeaux")
monkey15 = Monkey.new(name: 'Rene', speciality: 'Nannie', description: "BEst huggies in town", price: 140, user: user_owner1, address: "16 cours de l'intendance, Bordeaux")

monkey1.remote_picture_url = url1
monkey2.remote_picture_url = url2
monkey3.remote_picture_url = url3
monkey4.remote_picture_url = url4
monkey5.remote_picture_url = url5
monkey6.remote_picture_url = url6
monkey7.remote_picture_url = url7
monkey8.remote_picture_url = url8
monkey9.remote_picture_url = url9
monkey10.remote_picture_url = url10
monkey11.remote_picture_url = url11
monkey12.remote_picture_url = url12
monkey13.remote_picture_url = url13
monkey14.remote_picture_url = url14
monkey15.remote_picture_url = url15

monkey1.save
monkey2.save
monkey3.save
monkey4.save
monkey5.save
monkey6.save
monkey7.save
monkey8.save
monkey9.save
monkey10.save
monkey11.save
monkey12.save
monkey13.save
monkey14.save
monkey15.save


puts "monkeys done !"

puts "start bookings"
booking1 = Booking.create!(monkey: monkey10, user: user_renter1, checkin: Date.current, checkout: Date.current + 2, status: 2)
booking2 = Booking.create!(monkey: monkey1, user: user_renter1, checkin: Date.current, checkout: Date.current + 6, status: 2)
booking3 = Booking.create!(monkey: monkey5, user: user_renter2, checkin: Date.current, checkout: Date.current + 10, status: 2)
booking4 = Booking.create!(monkey: monkey6, user: user_renter2, checkin: Date.current, checkout: Date.current + 8, status: 2)
booking5 = Booking.create!(monkey: monkey8, user: user_owner1, checkin: Date.current, checkout: Date.current + 5, status: 2)


puts 'bookings done'

puts 'seed done !'
