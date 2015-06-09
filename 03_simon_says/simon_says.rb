def echo(w)
	return w
end

def shout(w)
	return w.upcase
end

def repeat(w, x=2)
	return ((w + " ") * x).chop
end

def start_of_word(w, x)
	return w[0, x]
end

def first_word(s)
	return s.split[0]
end

def titleize(s)
	little_words = %W(a at and in on over the)  
	s = s.split
	i = 0
	while i < s.length
		if i == 0
			s[i].capitalize!
		else
			s[i].capitalize! if not little_words.include?(s[i])
		end
	i += 1
	end
	return s.join(" ")
end