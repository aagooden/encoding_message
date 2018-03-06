def encode(string)
	string
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


