# frozen_string_literal: true

require 'factory_bot_rails'

puts '🏁 Starting seeding 🏁'
FactoryBot.create(:spaceship, name: 'Defiant', crew: 70)
FactoryBot.create(:spaceship, name: 'Jupiter 2', crew: 6)
FactoryBot.create(:spaceship, name: 'Apollo 11', crew: 4)

FactoryBot.create(:crew_member, name: 'Peter', age: 37, rank: 'captain', assignment: 'ground control', spaceship_id: 1)
FactoryBot.create(:crew_member, name: 'Karen', age: 32, rank: 'Admiral', assignment: 'Boss', spaceship_id: 2)
FactoryBot.create(:crew_member, name: 'Karen', age: 31, rank: 'Liutenant', assignment: 'Deputy', spaceship_id: 3)

FactoryBot.create(:mission, name: 'Ground Control', description: 'To Major Tom', length: 3, start_date: '2021-12-16', crew_member_id: 1)
FactoryBot.create(:mission, name: 'Take your protein pills', description: 'Put your helmet on', length: 2, start_date: '2021-12-15', crew_member_id: 2)
FactoryBot.create(:mission, name: 'Commencing countdown', description: 'Engines on', length: 4, start_date: '2021-12-15', crew_member_id: 3)
puts '✔ database seeded ✔'
