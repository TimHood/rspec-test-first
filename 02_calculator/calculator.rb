def add(n1, n2)
	n1 + n2
end

def subtract(n1, n2)
	n1 - n2
end

def sum(nums)
	return 0 if nums.length == 0
	return nums[0] if nums.length == 1
	i = 0
	sum = 0
	while i < nums.length
		sum += nums[i]
		i += 1
	end
	return sum
end

#copied this method from rubymonk tutorial
def multiply(*numbers)
  numbers.inject(1) { |product, number| product * number }
end

def power(n1, n2)
	n1 ** n2
end

#copied from another Odin student
def factorial(num)
	return 1 if num == 0
	(1..num).inject(1) {|product,x| product * x}
end