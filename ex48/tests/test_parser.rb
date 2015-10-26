require './lib/ex48/parser.rb'
require "test/unit"

class TestParser < Test::Unit::TestCase
	def test_peek
		word_list = [['noun', 'bear'], ['verb', 'eat'], ['stop', 'the'], ['noun', 'honey']]
		assert_equal(peek(word_list), "noun")
	end

	def test_match
		word_list = [['noun', 'bear'], ['verb', 'eat'], ['stop', 'the'], ['noun', 'honey']]
		assert_equal(match(word_list, "verb"), nil)
		word_list = [['noun', 'bear'], ['verb', 'eat'], ['stop', 'the'], ['noun', 'honey']]
		assert_equal(match(word_list, "noun"), ['noun', 'bear'])
	end
end
