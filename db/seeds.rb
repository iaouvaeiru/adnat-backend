# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organisation.create({name: "Super Tommy's Dinner Roll Wholesale", hourly_rate: 14})
Organisation.create({name: "Crazy Johnnie's Artisanal Sporks", hourly_rate: 23})
Organisation.create({name: "Jim's Gym", hourly_rate: 10})
Organisation.create({name: 'Cool Kids Club', hourly_rate: 22})
Organisation.create({name: 'Sumptuous Seedful Watermelons Shoppe', hourly_rate: 37})

User.create({name: "Timothy McJimothy Esquire the 2nd, Holy Emperor of the Roman Empire", email_address: "timmcjim321@tim.com", password: "bababa123", organisation_id: 3})
User.create({name: "Tricky Ricky", email_address: "teerick@aol.com", password: "ttrickums44321", organisation_id: 2})
User.create({name: "Hannah Montana", email_address: "mileycyrus@disney.com", password: "abc123"})
User.create({name: 'Baby Whale', email_address: "whales@ocean.com", password: "whales", organisation_id:2})
User.create({name: 'Non Conformist', email_address: "noway@hotmail.com", password: "nonconformist"})

Shift.create({start: "2022-03-04 09:15:00", finish: "2022-03-04 18:00:00", break_length: 45, user_id: 2})
Shift.create({start: "2022-03-05 09:00:00", finish: "2022-03-05 17:00:00", break_length: 30, user_id: 2})
Shift.create({start: "2022-03-06 12:45:00", finish: "2022-03-06 19:30:00", break_length: 60, user_id: 2})
Shift.create({start: "2022-03-06 11:45:00", finish: "2022-03-06 22:00:00", break_length: 60, user_id: 4})
Shift.create({start: "2022-03-10 09:15:00", finish: "2022-03-10 19:30:00", break_length: 30, user_id:1})