class Event < ApplicationRecord
	validates :organization, presence: true
	attr_accessor :date_range

	def all_day_event?
		self.start == self.start.localtime(utc_offset = nil) && self.end == self.end.localtime(utc_offset = nil) ? true : false
	end
end
