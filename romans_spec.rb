require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('romans.rb')

class RomanTest < MiniTest::Test

  def setup
    @number1 = Roman.new(1)
    @number5 = Roman.new(5)
    @number12 = Roman.new(12)
    @number56 = Roman.new(56)
    @number123 = Roman.new(123)

  end

  def test_input_is_a_number()
    assert_equal(1, @number1.number)
  end

  def test_convert_to_array
    assert_equal([1, 2], @number12.converted_array())
  end

  def test_array_size
    assert_equal(2, @number12.array_size())
    assert_equal(1, @number1.array_size())
  end

# This is kind of weird but it works in the grand scheme of things
# We are not using the number inside the Inst Obt
# We are only using it to access the method
  def test_single_digit_conversion_parameter
      assert_equal("I", @number1.single_digit_conversion_parameter(1))
      assert_equal("V",  @number1.single_digit_conversion_parameter(5))
  end

  def test_master_converstion
      assert_equal("I", @number1.master_conversion)
      assert_equal("V", @number5.master_conversion)
      assert_equal("XII", @number12.master_conversion)
      assert_equal("LVI", @number56.master_conversion)
  end

  def test_second_digit_converstion
    assert_equal("XX", @number1.second_digit_conversion_parameter(2))
  end


end
