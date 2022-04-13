# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning database'

Role.destroy_all
p 'role destroyed'
Task.destroy_all
p 'tasks destroyed'
Project.destroy_all
p 'projets destroyed'
User.destroy_all
p 'users destroyed'

p 'creating roles'
role1 = Role.create!(level: 'JUNIOR')


p 'creating users'
user1 = User.create!(last_name: 'Manon', first_name: 'KENZO', enable: 'false', admin: 'true', email: 'manon@exemple.com', password: '12345man', role: role1 , avatar: "https://kitt.lewagon.com/placeholder/users/cveneziani")
p user1.last_name
user2 = User.create!(last_name: 'Pierre', first_name: 'CARDIN', enable: 'false', admin: 'false', email: 'pierre@exemple.com', password:'12345pie', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/ssaunier")
p user2.last_name
user3 = User.create!(last_name: 'Olivier', first_name: 'ROUSTIN', enable: 'false', admin: 'false', email: 'olivier@exemple.com', password:'12345oli', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/bpaillard")
p user3.last_name

p 'creating projects'
projet1 = Project.create!(user: user1, name: 'Une application de journal personnel', description: 'écrire ses mémoires', start_date: '21/03/2022', end_date: '15/04/2022')
projet2 = Project.create!(user: user1, name: 'Un tracker de dépenses', description: 'tenir son budget', start_date: '24/03/2022', end_date: '14/03/2022')

p 'creating tasks'
Task.create!(user: user2, project: projet1, name: 'creation DB', description: 'diverses tables', status: 'In Review', estimate_time: '2', real_time:'5', tjm: '150')
Task.create!(user: user3, project: projet1, name: 'controleurs', description: 'maj', status: 'In Review', estimate_time: '1', real_time:'5', tjm: '150')
Task.create!(user: user3, project: projet2, name: 'login pages', description: 'creation', status: 'In progress', estimate_time: '1', real_time:'5', tjm: '150')
Task.create!(user: user2, project: projet2, name: 'home page', description: 'css', status: 'In progress', estimate_time: '2', real_time:'5', tjm: '150')
