# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ticket.delete_all
Ticket.create(title: 'Atentado à saúde pública', location: 'R Dr. Roberto Frias', long: 41.18622, lat: -8.59793, description: 'desc1', picture: '2.png', date: DateTime.new(2009,9,14,8),user_id: 1)
Ticket.create(title: 'Estrada esburacada', location: 'R Dr. Roberto Frias', long: 41.18622, lat: -8.59793, description: 'desc2', picture: '1.png',date: DateTime.new(2009,9,14,8), user_id: 1)
Ticket.create(title: 'Grafiti ofensivo', location: 'R Dr. Roberto Frias', long: 41.18622, lat: -8.59793, description: 'desc3', picture: '3.png', date: DateTime.new(2009,9,14,8),user_id: 1)
Ticket.create(title: 'Atentado à saúde pública', location: 'R Dr. Roberto Frias', long: 41.18622, lat: -8.59793, description: 'desc4', picture: '4.png', date: DateTime.new(2009,9,14,8), user_id: 1)

