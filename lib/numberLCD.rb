# frozen_string_literal: true

class Display
  def initialize
    @top_of_number = { 1 => '   ', 2 => ' _ ', 3 => ' _ ', 4 => '   ', 5 => ' _ ', 6 => ' _ ', 7 => ' _ ', 8 => ' _ ', 9 => ' _ ', 0 => ' _ ' }
    @middle_of_number = { 1 => '  |', 2 => ' _|', 3 => ' _|', 4 => '|_|', 5 => '|_ ', 6 => ' _|', 7 => '  |', 8 => '|_|', 9 => '|_|', 0 => '| |' }
    @bottom_of_number = { 1 => '  |', 2 => '|_ ', 3 => ' _|', 4 => '  |', 5 => ' _|', 6 => '|_|', 7 => '  |', 8 => '|_|', 9 => ' _|', 0 => '|_|' }
  end

  def convert(digits)
    number_of_digits = digits.to_s.length
    array_of_digits = digits.to_s.split('')
    if number_of_digits == 1
      return @top_of_number[digits] + "\n" + @middle_of_number[digits] + "\n" + @bottom_of_number[digits]
    else
      p digits.to_s.split('')
      return @top_of_number[array_of_digits[0].to_i] + @top_of_number[array_of_digits[1].to_i] + "\n" + @middle_of_number[array_of_digits[0].to_i] + @middle_of_number[array_of_digits[1].to_i] + "\n" + @bottom_of_number[array_of_digits[0].to_i] + @bottom_of_number[array_of_digits[1].to_i]
    end
  end
end
