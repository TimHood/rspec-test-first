def translate(string)
	#split words on space into array
	words = string.split
	vowels = %w(a e i o u)
	trans_words = []
	# loop thru words
	for word in words
		# if 1st letter is a vowel
		if vowels.include?(word[0])
			trans_words << word + "ay"
			next
		end
		# if 'qu' in word
		if word.include?('qu')
			# if 1st 2 letters are 'qu'
			if word[0..1] == 'qu'
				trans_words << word[2..-1] + 'quay'
				next
			else
				# if 'qu' in middle of word
				pos = word.index('qu')
				trans_words << word[pos+2..-1] + word[pos-1] + 'quay'
				next
			end
		end
		# if 1st 3 letters are 'sch'
		if word[0..2] == 'sch'
			trans_words << word[3..-1] + 'schay'
			next
		end
		# while 1st n letters are consonants
		i = 0
		new_word = word
		while not vowels.include?(word[i])
			new_word = new_word[1..-1] + new_word[0]
			i += 1
		end
		trans_words << new_word + "ay"
	end
	return trans_words.join(' ')
end

puts translate("apple")						# 'appleay'
puts translate("banana")					# 'ananabay'
puts translate("cherry")					# 'errychay'
puts translate("eat pie")					# 'eatay iepay'
puts translate("school")					# 'oolschay'
puts translate("quiet")						# 'ietquay'
puts translate("square")					# 'aresquay'
puts translate("the quick brown fox")		# 'ethay ickquay ownbray oxfay'