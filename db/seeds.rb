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
role1 = Role.create!(level: 'SENIOR')

p 'creating users'
user1 = User.create!(last_name: 'Donatella', first_name: 'VERSACE', enable: 'false', admin: 'true', email: 'donatella@exemple.com', password:'12345don', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/Tashou-fwi")
p user1.last_name
user2 = User.create!(last_name: 'Takada', first_name: 'KENZO', enable: 'false', admin: 'false', email: 'manon@exemple.com', password: '12345man', role: role1 , avatar:"https://kitt.lewagon.com/placeholder/users/danielle1305")
p user2.last_name
user3 = User.create!(last_name: 'Pierre', first_name: 'CARDIN', enable: 'false', admin: 'false', email: 'pierre@exemple.com', password:'12345pie', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/ssaunier")
p user3.last_name
user4 = User.create!(last_name: 'Olivier', first_name: 'ROUSTIN', enable: 'false', admin: 'false', email: 'olivier@exemple.com', password:'12345oli', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/Baptiste91")
p user4.last_name
user5 = User.create!(last_name: 'Jean Paul', first_name: 'GAUTHIER', enable: 'false', admin: 'false', email: 'oscar@exemple.com', password:'12345osc', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/Deiran972")
p user5.last_name
user6 = User.create!(last_name: 'Elie', first_name: 'SAAB', enable: 'false', admin: 'false', email: 'elie@exemple.com', password:'12345eli', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/colineschulthess")
p user6.last_name
user7 = User.create!(last_name: 'Coco', first_name: 'CHANNEL', enable: 'false', admin: 'false', email: 'coco@exemple.com', password:'12345coc', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/nadiaauger")
p user7.last_name
user8 = User.create!(last_name: 'Chantal', first_name: 'THOMAS', enable: 'false', admin: 'false', email: 'chantal@exemple.com', password:'12345cha', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/Wern-S")
p user8.last_name
user9 = User.create!(last_name: 'Stella', first_name: 'McCARTNEY', enable: 'false', admin: 'false', email: 'stella@exemple.com', password:'12345ste', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/JeanTimothee")
p user9.last_name
user10 = User.create!(last_name: 'John', first_name: 'GALLIANO', enable: 'false', admin: 'false', email: 'john@exemple.com', password:'12345joh', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/christopheridarch")
p user10.last_name
user11 = User.create!(last_name: 'Ninna', first_name: 'RICCI', enable: 'false', admin: 'false', email: 'nina@exemple.com', password:'12345nin', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/ApaeP")
p user11.last_name
user12 = User.create!(last_name: 'Thierry', first_name: 'MUGLER', enable: 'false', admin: 'false', email: 'thierry@exemple.com', password:'12345thi', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/DBigorre")
p user12.last_name
user13 = User.create!(last_name: 'Virgil', first_name: '  ABLOH', enable: 'false', admin: 'false', email: 'virgil@exemple.com', password:'12345vir', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/audreysufrin")
p user13.last_name
user14 = User.create!(last_name: 'Albert', first_name: 'ELBAZ', enable: 'false', admin: 'false', email: 'albert@exemple.com', password:'12345alb', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/kevcha")
p user14.last_name
user15 = User.create!(last_name: 'Ted', first_name: 'LAPIDUS', enable: 'false', admin: 'false', email: 'ted@exemple.com', password:'12345ted', role: role1, avatar:"https://kitt.lewagon.com/placeholder/users/Papillard")
p user15.last_name

p 'creating projects'
projet1 = Project.create!(user: user1, name: '- Map Toiture', description: 'Travaux isolation ', start_date: '14/04/2022', end_date: '14/04/2022')
projet2 = Project.create!(user: user1, name: '- Target Trajet', description: 'Trouver son chemin', start_date: '14/04/2022', end_date: '15/04/2022')
projet3 = Project.create!(user: user1, name: '- Semantique', description: 'Etude du language', start_date: '12/04/2022', end_date: '13/04/2022')
projet4 = Project.create!(user: user1, name: '- Tracker Depense', description: 'tenir son budget', start_date: '12/04/2022', end_date: '12/04/2022')
projet5 = Project.create!(user: user1, name: '- Plannification', description: 'Gerer son temps', start_date: '24/03/2022', end_date: '11/04/2022')
projet6 = Project.create!(user: user1, name: '- Process Industrie', description: 'Conception de tâche', start_date: '24/03/2022', end_date: '11/04/2022')

p 'creating tasks'
Task.create!(user: user2, project: projet1, name: 'Users stories', description: 'creation du chemin', status: 'In Review', estimate_time: '5', real_time:'6', tjm: '150')
# Task.create!(user: user3, project: projet1, name: 'Zoning', description: 'scinder les blocs', status: 'In Review', estimate_time: '1', real_time:'3', tjm: '150')
# Task.create!(user: user4, project: projet2, name: 'Maquette', description: 'creation', status: 'In progress', estimate_time: '1', real_time:'1', tjm: '150')
Task.create!(user: user5, project: projet2, name: 'Cahier des charges', description: 'recenser les besoins', status: 'In progress', estimate_time: '3', real_time:'2', tjm: '150')
# Task.create!(user: user6, project: projet3, name: 'Login page', description: 'pouvoir se connecter', status: 'In progress', estimate_time: '2', real_time:'1', tjm: '150')
Task.create!(user: user7, project: projet3, name: 'Home page', description: 'présentation de la page', status: 'In progress', estimate_time: '2', real_time:'2', tjm: '150')
# Task.create!(user: user8, project: projet4, name: 'Création seed', description: 'enrichir la base', status: 'In progress', estimate_time: '3', real_time:'3', tjm: '150')
# Task.create!(user: user9, project: projet4, name: 'Users stories', description: 'creation des formulaires', status: 'In progress', estimate_time: '5', real_time:'5', tjm: '150')
Task.create!(user: user10, project: projet5, name: 'Zoning', description: 'confirmer les blocs', status: 'In progress', estimate_time: '2', real_time:'3', tjm: '150')
# Task.create!(user: user11, project: projet5, name: 'Graphisme', description: 'enrigir le css', status: 'In progress', estimate_time: '2', real_time:'5', tjm: '150')
# Task.create!(user: user12, project: projet6, name: 'Login out ', description: 'pour se deconnecter', status: 'In progress', estimate_time: '2', real_time:'2', tjm: '150')
# Task.create!(user: user12, project: projet6, name: 'formulaire', description: 'inscrition', status: 'In progress', estimate_time: '2', real_time:'2', tjm: '150')
