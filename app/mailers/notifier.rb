class Notifier < ActionMailer::Base
  default from: 'avinashmca2014@gmail.com'
  layout 'mailer'

  def alert(bookings)
  	# Need to setup the mailer configurations
  	@bookings = bookings
  	@to = 'aruyanto@aligntech.com'
    mail(subject: "Hot-Desk - Today's Bookings", to: @to)
  end
end
