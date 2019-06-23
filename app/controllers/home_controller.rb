class HomeController < ApplicationController
  def index
    @staffs = Staff.general_staffs.includes(:bookings).where.not(bookings: {staff_id: nil})
    # @bookings = Booking.all
  end
end
