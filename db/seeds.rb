# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_bot_rails'

puts '🏁 Starting seeding 🏁'
FactoryBot.create(:spaceship, name: 'Defiant', crew: 70)
FactoryBot.create(:spaceship, name: 'Jupiter 2', crew: 6)
FactoryBot.create(:spaceship, name: 'Apollo 11', crew: 4)

puts '✔ database seeded ✔'
FactoryBot.create(:crew_member, name: 'Peter', age: 37, rank: 'captain', assignment: 'ground control', spaceship_id: 1)
FactoryBot.create(:crew_member, name: 'Karen', age: 32, rank: 'Admiral', assignment: 'Boss', spaceship_id: 2)
FactoryBot.create(:crew_member, name: 'Karen', age: 31, rank: 'Liutenant', assignment: 'Deputy', spaceship_id: 3)

FactoryBot.create(:mission, name: 'Ground Control', description: 'To Major Tom', length: 3, start_date: '2021-12-16', crew_member_id: 1)
FactoryBot.create(:mission, name: 'Take your protein pills', description: 'Put your helmet on', length: 2, start_date: '2021-12-15', crew_member_id: 2)
FactoryBot.create(:mission, name: 'Commencing countdown', description: 'Engines on', length: 4, start_date: '2021-12-15', crew_member_id: 3)

