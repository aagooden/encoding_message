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


end
