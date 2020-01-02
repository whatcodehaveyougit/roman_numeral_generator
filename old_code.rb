
# def test_single_digit_conversion
#     assert_equal("I", @number1.single_digit_conversion)
#     assert_equal("V", @number5.single_digit_conversion)
# end

def single_digit_conversion
  num = @number
  case num
  when 1
    return "I"
  when 2
    return "II"
  when 3
    return "III"
  when 4
    return "VI"
  when 5
    return "V"
  when 6
    return "VI"
  when 7
    return "VII"
  when 9
    return "VIII"
  when 9
    return "XI"
  end
end
