# frozen_string_literal: true

Airport.create(
  [
    { code: 'SFO', city: 'San Francisco' },
    { code: 'NYC', city: 'New York City' },
    { code: 'ABQ', city: 'Albuquerque' },
    { code: 'BOS', city: 'Boston' },
    { code: 'SEA', city: 'Seattle' },
    { code: 'ATL', city: 'Atlanta' }
  ]
)

Flight.create(
  [
    {
      departure_airport_id: Airport.first.id,
      arrival_airport_id: Airport.third.id,
      departure_time: Time.now + 9_100_000,
      duration: 138
    },
    {
      departure_airport_id: Airport.third.id,
      arrival_airport_id: Airport.second.id,
      departure_time: Time.now + 7434,
      duration: 212
    },
    {
      departure_airport_id: Airport.second.id,
      arrival_airport_id: Airport.first.id,
      departure_time: Time.now + 3_248_000,
      duration: 371
    },
    {
      departure_airport_id: Airport.third.id,
      arrival_airport_id: Airport.first.id,
      departure_time: Time.now + 88_888,
      duration: 133
    },
    {
      departure_airport_id: Airport.first.id,
      arrival_airport_id: Airport.second.id,
      departure_time: Time.now + 888_888,
      duration: 346
    },
    {
      departure_airport_id: Airport.second.id,
      arrival_airport_id: Airport.first.id,
      departure_time: Time.now + 8_888_888,
      duration: 371
    },
    {
      departure_airport_id: Airport.fourth.id,
      arrival_airport_id: Airport.fifth.id,
      departure_time: Time.now + 395_888_808,
      duration: 341
    },
    {
      departure_airport_id: Airport.last.id,
      arrival_airport_id: Airport.fourth.id,
      departure_time: Time.now + 8888,
      duration: 140
    },
    {
      departure_airport_id: Airport.last.id,
      arrival_airport_id: Airport.first.id,
      departure_time: Time.now + 8888,
      duration: 303
    }
  ]
)
