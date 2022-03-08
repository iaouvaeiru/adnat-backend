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

User.create({name: "Timothy McJimothy Esquire the 2nd, Holy Emperor of the Roman Empire", email_address: "timmcjim321@tim.com", password: "bababa123"})
User.create({name: "Tricky Ricky", email_address: "teerick@aol.com", password: "ttrickums44321", organisation_id: 2})
User.create({name: "Hannah Montana", email_address: "mileycyrus@disney.com", password: "abc123"})

Shift.create({start: "2022-03-04 09:15:00", finish: "2022-03-04 18:00:00", break_length: 45, user_id: 2})
Shift.create({start: "2022-03-05 09:00:00", finish: "2022-03-05 17:00:00", break_length: 30, user_id: 2})
Shift.create({start: "2022-03-06 12:45:00", finish: "2022-03-06 19:30:00", break_length: 60, user_id: 2})