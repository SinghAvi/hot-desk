class Booking < ApplicationRecord
 	belongs_to :staff
 	belongs_to :desk

 	after_save :occupy_desk

 	private

 	def occupy_desk
 		self.desk.update(occupied: true)
 	end
end
