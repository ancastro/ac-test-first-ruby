class Book
	attr_accessor :title

	def title=(new_title)
		words = new_title.split(' ')
		conjunctions = ['for', 'and', 'nor', 'but', 'or', 'yet', 'so']
		prepositions = ['in', 'the', 'of']
		articles = ['a', 'an', 'the']
		result = []

		words.first.capitalize!

		words.each do |word| 

			if conjunctions.include?(word) || prepositions.include?(word) ||articles.include?(word)
				result << word
			else
				word.capitalize!
				result << word
			end

		end

		result_string = result.join(' ')

		@title = result_string
		
	end
end