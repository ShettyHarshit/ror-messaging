# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = [
  'Naruto Uzumaki',
  'Sasuke Uchiha',
  'Sakura Haruno',
  'Kakashi Hatake',
  'Boruto Uzumaki',
  'Sarada Uchiha',
  'Mitsuki',
  'Konohamaru Sarutobi'
]

Contact.create(names.map{|i| {name: i, profile_url: 'https://i.pravatar.cc/300'} })