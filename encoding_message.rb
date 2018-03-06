def encode(string)
	converted = convert(string)
	shifted = shift(converted)
	secret = secret_message(shifted)
	return secret
end

def convert(string)
	array = []
	x = 0

	string.length.times do
		conv = string[x].ord
	array.push(conv)
	x += 1
	end
	return array
end

def shift(array)
	x = 0
	shifted_array = []
	array.length.times do
		conv = array[x] + 5
	shifted_array.push(conv)
	x += 1
	end
return shifted_array

end

def secret_message(array)
	message = ""
	x = 0
	array.length.times do
		conv = array[x].chr
		message[x] = conv
		x += 1
	end
	return message
end


