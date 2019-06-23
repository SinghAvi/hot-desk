class Desk < ApplicationRecord
	scope :free_desks, -> { where(occupied: false) }
end
