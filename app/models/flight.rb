class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'arrival_airport_id'
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'
  has_many :bookings
  has_many :passengers, through: :bookings

  def fmt_time_display
    departure_time.strftime('%m/%d/%Y %I:%M %p')
  end

  def fmt_time_search
    departure_time.strftime('%m/%d/%Y')
  end

  def fmt_time_param
    departure_time.strftime('%m%d%Y')
  end
end
