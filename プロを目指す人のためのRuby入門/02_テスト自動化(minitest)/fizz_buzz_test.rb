require 'minitest/autorun'
require_relative '../01_基礎理解/07_fizz_buzz.rb'

class FizzBuzzTest < MiniTest::Test
    def test_fizz_buzz
        assert_equal '1', fizz_buzz(1)
        assert_equal '2', fizz_buzz(2)
        assert_equal 'Fizz', fizz_buzz(3)
        assert_equal '4', fizz_buzz(4)
        assert_equal 'Buzz', fizz_buzz(5)
        assert_equal 'Fizz', fizz_buzz(6)
        assert_equal 'Fizz Buzz', fizz_buzz(15)
    end
end