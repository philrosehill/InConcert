performer1 = Performer.create(performer_name: "p1", performer_description: "small performer")
performer2 = Performer.create(performer_name: "p2", performer_description: "medium performer")
performer3 = Performer.create(performer_name: "p3", performer_description: "small performer")
performer4 = Performer.create(performer_name: "p4", performer_description: "medium performer")
performer5 = Performer.create(performer_name: "p5", performer_description: "large performer")


venue1 = Venue.create(venue_name: "v1", venue_description: "small venue", venue_zip_code: "10001")
venue2 = Venue.create(venue_name: "v2", venue_description: "medium venue", venue_zip_code: "10001")
venue3 = Venue.create(venue_name: "v3", venue_description: "large venue", venue_zip_code: "10001")
venue4 = Venue.create(venue_name: "v4", venue_description: "small venue", venue_zip_code: "11222")
venue5 = Venue.create(venue_name: "v5", venue_description: "medium venue", venue_zip_code: "11222")


Gig.create(performer_id: performer1.id, venue_id: venue1.id, date: "1/1/15")
Gig.create(performer_id: performer3.id, venue_id: venue2.id, date: "1/1/15")
Gig.create(performer_id: performer5.id, venue_id: venue2.id, date: "1/1/15")
Gig.create(performer_id: performer2.id, venue_id: venue3.id, date: "1/1/15")
Gig.create(performer_id: performer4.id, venue_id: venue3.id, date: "1/1/15")
Gig.create(performer_id: performer1.id, venue_id: venue2.id, date: "1/1/15")
Gig.create(performer_id: performer3.id, venue_id: venue1.id, date: "1/1/15")
Gig.create(performer_id: performer5.id, venue_id: venue3.id, date: "1/1/15")
Gig.create(performer_id: performer2.id, venue_id: venue4.id, date: "1/1/15")
Gig.create(performer_id: performer4.id, venue_id: venue5.id, date: "1/1/15")

User.create(email: "philrosehill@gmail.com", password: "password", name: "Phil", rank: "5", user_zip_code: "11222")
User.create(email: "test1@test.com", password: "password", name: "Rob", rank: "4", user_zip_code: "10001")
User.create(email: "test2@test.com", password: "password", name: "Russell", rank: "3", user_zip_code: "11731")
User.create(email: "test3@test.com", password: "password", name: "Tina", rank: "1", user_zip_code: "10022")
User.create(email: "test4@test.com", password: "password", name: "Ryan", rank: "2", user_zip_code: "10005")
User.create(email: "test5@test.com", password: "password", name: "Katie", rank: "1", user_zip_code: "10001")
User.create(email: "test6@test.com", password: "password", name: "Lei", rank: "2", user_zip_code: "03889")
User.create(email: "test7@test.com", password: "password", name: "Nina", rank: "1", user_zip_code: "10001")
User.create(email: "test8@test.com", password: "password", name: "Dan", rank: "1", user_zip_code: "10001")
User.create(email: "test9@test.com", password: "password", name: "Conor", rank: "1", user_zip_code: "10001")
User.create(email: "test10@test.com", password: "password", name: "Sue", rank: "1", user_zip_code: "10001")
User.create(email: "test11@test.com", password: "password", name: "Lauren", rank: "1", user_zip_code: "10001")
User.create(email: "test12@test.com", password: "password", name: "Cat", rank: "1", user_zip_code: "10001")
User.create(email: "test13@test.com", password: "password", name: "Stephanie", rank: "1", user_zip_code: "10001")
User.create(email: "test14@test.com", password: "password", name: "Yi", rank: "2", user_zip_code: "10001")
User.create(email: "test15@test.com", password: "password", name: "Erol", rank: "1", user_zip_code: "10001")
User.create(email: "test16@test.com", password: "password", name: "Greta", rank: "1", user_zip_code: "10001")
User.create(email: "test17@test.com", password: "password", name: "Natalia", rank: "1", user_zip_code: "10001")



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
