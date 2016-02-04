# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Driver.create(id: 14, name: 'Jack', last_connected_at: DateTime.now)
  DriversRoute.create(id: 12324, driver_id: 14, driving_from_at: DateTime.now, driving_to_at: DateTime.now, route_id: 2)
  Route.create(id: 2, label: 'R1')
  RoutesTruck.create(id: 1, route_id: 2, from_at: DateTime.now, to_at: DateTime.now, truck_id: 1)
  Truck.create(id: 1, label: 'V1', colli_in_truck: 517, turnover: 5, last_lat_lng: '31.45142,18.2474' )
  Recipient.create(id: 1, message_id: 2, recipientable_id: 14, recipientable_type: 'Driver', state: 'unread')
  Recipient.create(id: 2, message_id: 21, recipientable_id: 421, recipientable_type: 'User', state: 'read')
  Recipient.create(id: 3, message_id: 3, recipientable_id: 14, recipientable_type: 'Driver', state: 'unread')
  Recipient.create(id: 4, message_id: 4, recipientable_id: 14, recipientable_type: 'Driver', state: 'unread')
  Recipient.create(id: 5, message_id: 5, recipientable_id: 14, recipientable_type: 'Driver', state: 'unread')
  Message.create(id: 2, subject: "this is the subject of this message", body: "this is the body")
  Message.create(id: 3, subject: "this is the subject of this message", body: "this is the body")
  Message.create(id: 4, subject: "this is the subject of this message", body: "this is the body")
  Message.create(id: 5, subject: "this is the subject of this message", body: "this is the body")
  Message.create(id: 21, subject: "welcome to this world", body: "and goodbye from here")

  (1..20).each do |i|
    Driver.create(id: 15+i, name: "SMITH#{1+i}", last_connected_at: DateTime.now)
    DriversRoute.create(id: 12325+i, driver_id: 15+i, driving_from_at: DateTime.now, driving_to_at: DateTime.now, route_id: 3+i)
    Route.create(id: 3+i, label: "R#{2+i}")
    RoutesTruck.create(id: 2+i, route_id: 3+i, from_at: DateTime.now, to_at: DateTime.now, truck_id: 2+i)
    Truck.create(id: 2+i, label: "V#{3+i}", colli_in_truck: 518+i, turnover: 6+i, last_lat_lng: '31.45142,18.2474' )
    Recipient.create(id: 33+i, message_id: 33+i, recipientable_id: 15+i, recipientable_type: 'Driver', state: 'unread')
    Message.create(id: 33+i, subject: "this is the subject of this message", body: "this is the body")
  end
