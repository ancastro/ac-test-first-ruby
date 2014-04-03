class Temperature

	def Temperature.from_celsius(degrees)
		new(:c => degrees)
	end

	def Temperature.from_fahrenheit(degrees)
		new(:f => degrees)
	end

	def initialize(options = {})
		@f_temp = options[:f] || ((options[:c] * 9.0) / 5.0) + 32.0
		@c_temp = options[:c] || ((options[:f] - 32.0) * 5.0) / 9.0
	end

	def in_fahrenheit
		@f_temp
	end

	def in_celsius
		@c_temp
	end

end

class Celsius < Temperature

	def initialize(degrees)
		super(:c => degrees)
	end

end

class Fahrenheit < Temperature

	def initialize(degrees)
		super(:f => degrees)
	end

end
