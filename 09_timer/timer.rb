require "Time"

class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def seconds=(new_seconds)
		@seconds = new_seconds
	end

	def time_string
		t = Time.at(@seconds)
		t.utc.strftime("%H:%M:%S")
	end

end