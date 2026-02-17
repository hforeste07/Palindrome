require 'minitest/autorun'
require_relative '../palendrome.rb'

class TestPalindrome < Minitest::Test
  def test_palindrome
    assert_equal true, palindrome?("A man, a plan, a canal: Panama")
    assert_equal false, palindrome?("race a car")
    assert_equal true, palindrome?("No 'x' in Nixon")
    assert_equal true, palindrome?("Was it a car or a cat I saw?")
    assert_equal false, palindrome?("Hello, World!")

  end
end
