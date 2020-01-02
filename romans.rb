class Roman

attr_accessor :number

def initialize(number)
  @number = number
end


  def number
    return @number
  end

  def converted_array
  array = @number.to_s.split(//).map{|chr| chr.to_i}
  return array
  end

  def array_size
    array = converted_array
    length = array.count
    if length == 1
      return 1
    elsif length == 2
      return 2
    elsif length == 3
      return 3
    elsif length == 4
      return 4
    end
  end

  def master_conversion
    array = converted_array()
    length = array.count
    if length == 1
      return single_digit_conversion_parameter(array[0])
    elsif length == 2
      first_num = second_digit_conversion_parameter(array[0])
      second_num = single_digit_conversion_parameter(array[1])
      return first_num + second_num
    elsif length == 3
      return 3
    elsif length == 4
      return 4
    end
  end

  def single_digit_conversion_parameter(num)
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
    when 8
      return "VIII"
    when 9
      return "XI"
    end
  end

  def second_digit_conversion_parameter(num)
    case num
    when 1
      return "X"
    when 2
      return "XX"
    when 3
      return "XXX"
    when 4
      return "XL"
    when 5
      return "L"
    when 6
      return "LX"
    when 7
      return "LXX"
    when 8
      return "LXXX"
    when 9
      return "XC"
    end
  end




end
