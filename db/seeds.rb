# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning database'

Project.destroy_all
p 'projets destroyed'
Task.destroy_all
p 'tasks destroyed'
User.destroy_all
p 'users destroyed'
Role.destroy_all
p 'role destroyed'

p 'creating roles'
role1 = Role.create!(level: 'junior')


p 'creating users'
user1 = User.create!(last_name: 'Natacha', first_name: 'PARNASSE', enable: 'false', admin: 'true', email: 'natacha@exemple.com', password: '12345nat', role: role1 , avatar: "https://kitt.lewagon.com/placeholder/users/cveneziani")
p user1.last_name
user2 = User.create!(last_name: 'Pierre', first_name: 'CARDIN', enable: 'false', admin: 'false', email: 'pierre@exemple.com', password:'12345pie', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/ssaunier")
p user2.last_name

p 'creating projects'
projet1 = Project.create!(user: user1, name: 'Une application de journal personnel', description: 'écrire ses mémoires', start_date: '21/03/2022', end_date: '01/04/2022')
projet2 = Project.create!(user: user2, name: 'Un tracker de dépenses', description: 'tenir son budget', start_date: '24/03/2022', end_date: '12/03/2022')

p 'creating tasks'
Task.create!(project: projet1, name: 'creation DB', description: 'diverses tables', status: 'début', estimate_time: '2')
Task.create!(project: projet1, name: 'controleurs', description: 'maj', status: 'en cours', estimate_time: '1')
Task.create!(project: projet2, name: 'login pages', description: 'creation', status: 'début', estimate_time: '1')
Task.create!(project: projet2, name: 'home page', description: 'css', status: 'en cours', estimate_time: '2')
