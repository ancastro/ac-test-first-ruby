class Array

	def sum
		@sum = 0

		self.each { |num| @sum += num }

		@sum
	end

	def square

		if self.empty?
			[]
		else
			self.map { |num| num ** 2 }
		end

	end

	def square!

		if self.empty?
			[]
		else
			self.map! { |num| num ** 2 }
		end

	end

end