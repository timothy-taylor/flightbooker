# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([{ code: 'SFO', city: 'San Francisco' }, 
                           { code: 'NYC', city: 'New York City' }, 
                           { code: 'ABQ', city: 'Albuquerque' }])

flights = Flight.create([
  { departure_airport_id: Airport.first.id, 
    arrival_airport_id: Airport.last.id, 
    departure_time: Time.now, 
    duration: 138 },
  { departure_airport_id: Airport.last.id,
    arrival_airport_id: Airport.second.id,
    departure_time: Time.now,
    duration: 212 },
  { departure_airport_id: Airport.second.id,
    arrival_airport_id: Airport.first.id,
    departure_time: Time.now,
    duration: 346 }])
