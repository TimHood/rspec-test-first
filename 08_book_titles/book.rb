class Book
	
	def title=(title)
		words = title.split
		small_words = %w(a an and of in the)
		for word in words
			unless small_words.include?(word)
				word.capitalize!
			end
		end
		words[0].capitalize!
		@title = words.join(" ")
	end

	def title
		@title
	end
end