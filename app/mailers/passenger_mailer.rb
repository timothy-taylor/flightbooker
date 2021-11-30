class PassengerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.passenger_mailer.thank_you.subject
  #
  def thank_you(passenger)
    @passenger = passenger

    mail(to: @passenger.email, subject: 'Booking Confirmed')
  end
end
