require "minitest/autorun"
require_relative "encoding_message.rb"

class Encoding_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_give_string_gives_string
		message = "I am a message"
		assert_equal(String, encode(message).class)
	end

	def test_return_array
		message = "I am a message"
		assert_equal(Array, convert(message).class)
	end

	def test_return_array_of_one_number_representing_ascii_code
		message = "a"
		assert_equal([97], convert(message))
	end

	def test_return_array_of_multiple_numbers_representing_ascii_code
		message = "abc"
		assert_equal([97, 98, 99], convert(message))
	end

	def test_return_array_of_multiple_numbers_plus_5
		message = [97,98,99]
		assert_equal([102, 103, 104], shift(message))
	end

	def test_return_string_abc_when_given_97_98_99
		message = [97,98,99]
		assert_equal("abc", secret_message(message))
	end

	def test_return_string_efg_give_abc
		message = "abcdefg"
		assert_equal("fghijkl", encode(message))
	end

	def test_return_array_of_multiple_numbers_minus_5
		message = [102,103,104]
		assert_equal([97, 98, 99], unshift(message))
	end

	def test_return_decoded_message_when_given_encoded_message
		message = "fgh"
		assert_equal("abc", decode(message))
	end

	def test_return_message_encoded_by_day_of_month
		message = "abc"
		assert_equal("ghi", encode_day_month(message))
	end

	def test_return_message_decoded_by_day_of_month
		message = "ghi"
		assert_equal("abc", decode_day_month(message))
	end
	



end
