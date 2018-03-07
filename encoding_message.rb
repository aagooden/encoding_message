def encode(string)
	converted = convert(string)
	shifted = shift(converted)
	secret = secret_message(shifted)
	return secret
end

def encode_day_month(string)
	converted = convert(string)
	shifted = shift_day_month(converted)
	secret = secret_message(shifted)
	return secret
end

def decode(string)
	converted = convert(string)
	unshifted = unshift(converted)
	secret = secret_message(unshifted)
end

def decode_day_month(string)
	converted = convert(string)
	unshifted = unshift_day_month(converted)
	secret = secret_message(unshifted)
end


def encode_messages_from_array(array)
	encoded_array = []
	array_message = ""
	for x in (0...array.length)
		array_message = array[x]
		array_message = encode(array_message)
		encoded_array.push(array_message)
	end
	return encoded_array
end

def decode_messages_from_array(array)
	decoded_array = []
	array_message = ""
	for x in (0...array.length)
		array_message = array[x]
		array_message = decode(array_message)
		decoded_array.push(array_message)
	end
	return decoded_array
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

def shift_day_month(array)
	time = Time.new
	day = time.day
	x = 0
	shifted_array = []
	array.length.times do
		conv = array[x] + day
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

def unshift(array)
	x = 0
	shifted_array = []
	array.length.times do
		conv = array[x] - 5
	shifted_array.push(conv)
	x += 1
	end
return shifted_array

end

def unshift_day_month(array)
	time = Time.new
	day = time.day
	x = 0
	shifted_array = []
	array.length.times do
		conv = array[x] - day
	shifted_array.push(conv)
	x += 1
	end
return shifted_array

end



