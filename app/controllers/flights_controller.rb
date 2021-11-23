class FlightsController < ApplicationController
  def index
    @flights = params[:departure_airport] ? Flight.where(arrival_airport: params[:arrival_airport], departure_airport: params[:departure_airport]) : Flight.all
  end
end
