class Event < ApplicationRecord
	validates :organization, presence: true
	attr_accessor :date_range

	def all_day_event?
		self.start == self.start.midnight && self.end == self.end.end_of_day ? true : false
	end
end
