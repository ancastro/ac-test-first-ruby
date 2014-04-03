class RPNCalculator

attr_accessor :value

def initialize
	@stack = []
	@value = 0
end

def push(num)
	@stack << num
end

def plus
	raise "calculator is empty" if @stack.empty?

	if @stack.size > 1
		@value = @stack.pop + @stack.pop
	else
		@value += @stack.pop
	end
end

def minus
	raise "calculator is empty" if @stack.empty?

	if @stack.size > 1
		num1 = @stack.pop
		num2 = @stack.pop

		@value = num2 - num1
	else
		@value -= @stack.pop
	end
end

def divide
	raise "calculator is empty" if @stack.empty?

	if @stack.size > 1
			num1 = @stack.pop
			num2 = @stack.pop

			@value = num2 / num1.to_f
		else
			@value = @value / @stack.pop
		end
end

def times
	raise "calculator is empty" if @stack.empty?

	if @stack.size > 1
			num1 = @stack.pop
			num2 = @stack.pop

			@value = num2 * num1
		else
			@value = @stack.pop * @value
		end
end

def tokens(str)

	@operators = ['*', '/', '+', '-']
	@tokens = str.split(' ')

	@tokens.map do |token|
		if @operators.include?(token)
			token = token.intern
		else
			token = token.to_i
		end
	end
end

def evaluate(str)
	@stack = tokens(str)
	@stack.map! { |item| item.to_s if item == Symbol }

	token1 = @stack.pop
	token2 = @stack.pop

	@stack.each do |token|

		if @operators.include?(token1) && @operators.include?(token2)
			evaluate_helper(token2)
			evaluate_helper(token1)
		else
			@stack.push(token2)
			evaluate_helper(token1)
		end
	end

	@value

end

def evaluate_helper(token)

	case token
		when :*
			times
		when :/
			divide
		when :+
			plus
		when :-
			minus
		else
			@stack.push
		end	
	end
end










