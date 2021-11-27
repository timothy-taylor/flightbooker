# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([{ code: 'SFO', city: 'San Francisco' }, 
                           { code: 'NYC', city: 'New York City' }, 
                           { code: 'ABQ', city: 'Albuquerque' },
                           { code: 'BOS', city: 'Boston' },
                           { code: 'SEA', city: 'Seattle' },
                           { code: 'ATL', city: 'Atlanta' }])

flights = Flight.create([
  { departure_airport_id: Airport.first.id, 
    arrival_airport_id: Airport.third.id, 
    departure_time: Time.now + 9100000, 
    duration: 138 },
  { departure_airport_id: Airport.third.id,
    arrival_airport_id: Airport.second.id,
    departure_time: Time.now + 7434,
    duration: 212 },
  { departure_airport_id: Airport.second.id,
    arrival_airport_id: Airport.first.id,
    departure_time: Time.now + 3248000,
    duration: 371 },
 { departure_airport_id: Airport.third.id,
    arrival_airport_id: Airport.first.id,
    departure_time: Time.now + 88888,
    duration: 133 },
 { departure_airport_id: Airport.first.id,
    arrival_airport_id: Airport.second.id,
    departure_time: Time.now + 888888,
    duration: 346 },
 { departure_airport_id: Airport.second.id,
    arrival_airport_id: Airport.first.id,
    departure_time: Time.now + 8888888,
    duration: 371 },
 { departure_airport_id: Airport.fourth.id,
    arrival_airport_id: Airport.fifth.id,
    departure_time: Time.now + 395888808,
    duration: 341 },
 { departure_airport_id: Airport.last.id,
    arrival_airport_id: Airport.fourth.id,
    departure_time: Time.now + 8888,
    duration: 140 },
 { departure_airport_id: Airport.last.id,
    arrival_airport_id: Airport.first.id,
    departure_time: Time.now + 8888,
    duration: 303 },
])
