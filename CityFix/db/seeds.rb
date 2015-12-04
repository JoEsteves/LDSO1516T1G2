# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
@user1 = User.create(fname: 'Ricardo', lname: 'Castro', email: 'ricardo@gmail.com', password: 'ldso123')
@user2 = User.create(fname: 'Cristovao', lname: 'Silva', email: 'cris@gmail.com', password: 'ldso123')
@user3 = User.create(fname: 'Jo', lname: 'Esteves', email: 'jo@gmail.com', password: 'ldso123')
@user4 = User.create(fname: 'Marcio', lname: 'Fonte', email: 'marcio@gmail.com', password: 'ldso123')
@user5 = User.create(fname: 'Tiago', lname: 'Miranda', email: 'tiago@gmail.com', password: 'ldso123')


Ticket.delete_all


Ticket.create(title: 'Atentado à saúde pública', location: 'R Dr. Roberto Frias', long: 41.18622, lat: -8.59793, description: 'desc1', picture: '2.png', date: DateTime.new(2009,9,14,8),user_id: @user1.id)
Ticket.create(title: 'Estrada esburacada', location: 'R Dr. Roberto Frias', long: 41.18622, lat: -8.59793, description: 'desc2', picture: '1.png',date: DateTime.new(2009,9,14,8), user_id: @user2.id)
Ticket.create(title: 'Grafiti ofensivo', location: 'R Dr. Roberto Frias', long: 41.18622, lat: -8.59793, description: 'desc3', picture: '3.png', date: DateTime.new(2009,9,14,8),user_id: @user3.id)
Ticket.create(title: 'Atentado à saúde pública', location: 'R Dr. Roberto Frias', long: 41.18622, lat: -8.59793, description: 'desc4', picture: '4.png', date: DateTime.new(2009,9,14,8), user_id: @user4.id)


