# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.destroy_all
Book.destroy_all
tomi = Author.create(first_name: 'Tomi', last_name: 'Adeyemi', middle_name: '', email: 'Montez.Smith1@gmail.com', password:'cookies', password_confirmation: 'cookies' )
